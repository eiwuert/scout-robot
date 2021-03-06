<?php

/**
 * Sends a Password Notification to a user that has just been created
 * by an admin.
 * The user can see his new Password and login with that password
 */

namespace App\Notifications;

use Illuminate\Notifications\Notification;
use Zoomyboy\BetterNotifications\MailMessage;
use App\User;

class FirstUserPasswordNotification extends Notification
{
    public $password;
	public $user;

    /**
     * Create a notification instance.
     *
     * @param  string  $password
	 * @param User $user
     * @return void
     */
    public function __construct($password, User $user)
    {
        $this->password = $password;
		$this->user = $user;
    }

    /**
     * Get the notification's channels.
     *
     * @param  mixed  $notifiable
     * @return array|string
     */
    public function via($notifiable)
    {
        return ['mail'];
    }

    /**
     * Build the mail representation of the notification.
     *
     * @param  mixed  $notifiable
     * @return \Illuminate\Notifications\Messages\MailMessage
     */
    public function toMail($notifiable)
    {
        return (new MailMessage($this->user))
			->subject('Herzlich Willkommen bei '.config('app.name'))
			->line('Du bekommst diese E-Mail, weil ein neues Benutzerkonto für dich eingerichtet wurde.')
			->line('Deine Logindaten lauten wie folgt:')
			->line('<b>E-Mail-Adresse:</b> '.$this->user->email)
			->line('<b>Passwort:</b> '.$this->password)
			->line('Über den folgenden Link kannst du dich einloggen:')
            ->action(url(config('app.url').'/login'), 'Zum login');
    }
}
