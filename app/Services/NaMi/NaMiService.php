<?php

namespace App\Services\NaMi;

use App\Conf;
use App\Exceptions\NaMi\LoginException;
use App\Exceptions\NaMi\TooManyLoginAttemptsException;

class NaMiService {

    protected $cookie;
    protected $baseUrl;
    protected $config;
    protected $user = null;
    protected $password = null;

    /** @var int Anzahl erlaubter Loginversuche */
    private $times = 3;

    public function __construct() {
        $this->cookie = config('nami.cookie');
        $this->baseUrl = config('nami.baseurl');
        $this->config = Conf::first();
    }

    protected function setUser($user) {
        $this->user = $user;
    }

    protected function setPassword($password) {
        $this->password = $password;
    }

    public function getBaseUrl() {
        return $this->baseUrl;
    }

    public function getConfig() {
        return $this->config;
    }

    public function getCookie() {
        return $this->cookie;
    }

    public function cookieExists() {
        return file_exists($this->cookie);
    }

    /**
     * Generates a new Session when expired
     */
    public function newSession() {
        @unlink($this->getCookie());

        $handle = curl_init($this->getBaseUrl().'/ica/pages/login.jsp');
        if (!env('NAMI_SSL')) {
            curl_setopt($handle, CURLOPT_SSL_VERIFYHOST, 0);
            curl_setopt($handle, CURLOPT_SSL_VERIFYPEER, 0);
        }
        curl_setopt($handle, CURLOPT_FOLLOWLOCATION, true);
        curl_setopt ($handle, CURLOPT_POST, 1);
        curl_setopt($handle, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt ($handle, CURLOPT_COOKIEJAR, $this->getCookie());
        $body = curl_exec($handle);
        curl_close($handle);

        $handle = curl_init($this->getBaseUrl().'/ica/rest/nami/auth/manual/sessionStartup');
        if (!env('NAMI_SSL')) {
            curl_setopt($handle, CURLOPT_SSL_VERIFYHOST, 0);
            curl_setopt($handle, CURLOPT_SSL_VERIFYPEER, 0);
        }
        curl_setopt($handle, CURLOPT_FOLLOWLOCATION, true);
        curl_setopt($handle, CURLOPT_POSTFIELDS, 'Login=API&redirectTo=./app.jsp&username='.$this->username().'&password='.$this->password());
        curl_setopt ($handle, CURLOPT_POST, 1);
        curl_setopt($handle, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt ($handle, CURLOPT_COOKIEJAR, $this->getCookie());
        curl_setopt ($handle, CURLOPT_COOKIEFILE, $this->getCookie());
        $body = curl_exec($handle);
        curl_close($handle);

        $response = json_decode($body);

        if (str_contains($body, 'Anzahl von Login-Versuchen wurde erreicht')) {
            $time = preg_replace('/^.*([0-9]+)\ Minuten.*$/Us', '$1', $body);

            $e = new TooManyLoginAttemptsException('Too many login attempts', 3000);
            $e->setTime($time);

            throw $e;
        }

        if (isset($response->statusCode)) {
            switch($response->statusCode) {
                case 3000:
                    throw new LoginException('Wrong Credentials', $response->statusCode);
                case 0:
                    return true;
                default:
                    if(config('nami.log')) {\Log::debug('NaMi-Response: '.$body);}
                    throw new LoginException('Unknown error', $response->statusCode);
            }
        } else {
            if(config('nami.log')) {\Log::debug('NaMi-Response: '.$body);}
            throw new LoginException('Unknown error', null);
        }
    }

    public function login($handle) {
        if (!$this->cookieExists()) {
            $this->newSession();
        }

        $response = call_user_func($handle);

        if (isset($response->success) && $response->success === false && isset($response->message) && $response->message == 'Session expired') {
            $this->newSession();
            return call_user_func($handle);
        } elseif (isset($response->success) && $response->success === true) {
            return $response;
        }

        return $response;
    }

    public function username() {
        return $this->user ?: $this->getConfig()->namiUser;
    }

    public function password() {
        return $this->password ?: $this->getConfig()->namiPassword;
    }

    public function isSuccess($response) {
        return isset ($response->success) && $response->success === true
            && isset ($response->responseType) && $response->responseType == 'OK';
    }

    public function checkCredentials($user, $password) {
        $this->setPassword($password);
        $this->setUser($user);
        try {
            $this->newSession();
        } catch (LoginException $e) {
            return false;
        }

        return true;
    }

    public function get($url) {
        return $this->login(function() use ($url) {
            $handle = curl_init($this->getBaseUrl().$url);

            curl_setopt($handle, CURLOPT_FOLLOWLOCATION, true);
            if (!env('NAMI_SSL')) {
                curl_setopt($handle, CURLOPT_SSL_VERIFYHOST, 0);
                curl_setopt($handle, CURLOPT_SSL_VERIFYPEER, 0);
            }
            curl_setopt($handle, CURLOPT_POSTFIELDS, '');
            curl_setopt ($handle, CURLOPT_POST, 0);
            curl_setopt($handle, CURLOPT_RETURNTRANSFER, 1);
            curl_setopt ($handle, CURLOPT_COOKIEJAR, $this->getCookie());
            curl_setopt ($handle, CURLOPT_COOKIEFILE, $this->getCookie());
            $body = curl_exec($handle);
            curl_close($handle);

            if(config('nami.log')) {\Log::debug('NaMi-Response: '.$body);}

            return json_decode($body);
        });
    }

    public function post($url, $fields) {
        return $this->login(function() use ($url, $fields) {
            $handle = curl_init($this->getBaseUrl().$url);

            curl_setopt($handle, CURLOPT_CUSTOMREQUEST, 'POST');
            if (!env('NAMI_SSL')) {
                curl_setopt($handle, CURLOPT_SSL_VERIFYHOST, 0);
                curl_setopt($handle, CURLOPT_SSL_VERIFYPEER, 0);
            }
            curl_setopt($handle, CURLOPT_POSTFIELDS, json_encode($fields));
            curl_setopt($handle, CURLOPT_RETURNTRANSFER, 1);
            curl_setopt ($handle, CURLOPT_COOKIEJAR, $this->getCookie());
            curl_setopt ($handle, CURLOPT_COOKIEFILE, $this->getCookie());
            curl_setopt ($handle, CURLOPT_HTTPHEADER, [
                'Content-Type: application/json',
                'Accept: application/json'
            ]);
            $body = curl_exec($handle);
            curl_close($handle);

            if(config('nami.log')) {\Log::debug('NaMi-Response: '.$body);}

            return json_decode($body);
        });
    }

    public function put($url, $fields) {
        return $this->login(function() use ($url, $fields) {
            $handle = curl_init($this->getBaseUrl().$url);

            curl_setopt($handle, CURLOPT_CUSTOMREQUEST, 'PUT');
            if (!env('NAMI_SSL')) {
                curl_setopt($handle, CURLOPT_SSL_VERIFYHOST, 0);
                curl_setopt($handle, CURLOPT_SSL_VERIFYPEER, 0);
            }
            curl_setopt($handle, CURLOPT_POSTFIELDS, json_encode($fields));
            curl_setopt($handle, CURLOPT_RETURNTRANSFER, 1);
            curl_setopt ($handle, CURLOPT_COOKIEJAR, $this->getCookie());
            curl_setopt ($handle, CURLOPT_COOKIEFILE, $this->getCookie());
            curl_setopt ($handle, CURLOPT_HTTPHEADER, [
                'Content-Type: application/json',
                'Accept: application/json'
            ]);
            $body = curl_exec($handle);
            curl_close($handle);

            if(config('nami.log')) {\Log::debug('NaMi-Response: '.$body);}

            return json_decode($body);
        });
    }
}
