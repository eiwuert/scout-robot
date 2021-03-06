<?php

namespace App\Services\NaMi;

use GuzzleHttp\Client;
use App\Exceptions\NaMi\GroupException;
use App\Exceptions\NaMi\SystemException;
use App\Facades\NaMi\NaMiGroup;

class Region extends NaMiService {
	public function __construct() {
		parent::__construct();
	}

	public function all() {
		$url = '/ica/rest/baseadmin/region';
		$response = $this->get($url);

		if ($this->isSuccess($response)) {
			return $response->data;
		}

		throw (new SystemException('Unknown Error'))
			->setUrl($url)
			->setResponse($response);
	}
}
