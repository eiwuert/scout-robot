<?php

namespace App\Notifications;

use Illuminate\Bus\Queueable;
use Illuminate\Notifications\Notification;
use Illuminate\Contracts\Queue\ShouldQueue;
use Zoomyboy\BetterNotifications\MailMessage;
use App\Member;
use App\Traits\GeneratesBlade;
use App\Services\Pdf\Remember as RememberPdfService;
use App\Collections\OwnCollection;
use App\Conf;
use Illuminate\Support\Facades\Blade;

class EmailRememberNotification extends Notification
{
	use Queueable;
	use GeneratesBlade;

	public $member;
	public $family;
	public $deadline;
	public $config;
	public $members;

    /**
     * Create a new notification instance.
     *
     * @return void
     */
    public function __construct(Member $member, $family, $deadline, $members)
    {
        $this->member = $member;
		$this->family = $family;
		$this->deadline = $deadline;
		$this->config = Conf::first();
		$this->members = $members;
    }

    /**
     * Get the notification's delivery channels.
     *
     * @param  mixed  $notifiable
     * @return array
     */
    public function via($notifiable)
    {
        return ['mail'];
	}

    /**
     * Get the mail representation of the notification.
     *
     * @param  mixed  $notifiable
     * @return \Illuminate\Notifications\Messages\MailMessage
     */
    public function toMail($notifiable)
	{
		$greeting = 'Sehr geehrte Familie '.$this->member->lastname.',';

		$body = $this->generateView($this->config->emailRememberText, ['members' => $this->generateMemberString()]);

        $message = (new MailMessage)
			->greeting($greeting)
            ->line($body)
			->subject('Zahlungserinnerung von '.Conf::first()->groupname)
			->salutation('Viele Grüße und gut Pfad')
			->subcopy('Der Stammesvorstand')
			->heading(Conf::first()->emailHeading ?: '');

		$members = $this->family === true
			? $this->members->groupBy('lastname')
			: (new OwnCollection([$this->member]))->groupBy('lastname');

		$filename = ($this->family)
			? 'Zahlungserinnerung für Familie '.$this->member->lastname.'.pdf'
			: 'Zahlungserinnerung für '.$this->member->firstname.' '.$this->member->lastname.'.pdf';
		$service = new RememberPdfService($members, ['deadline' => $this->deadline, 'family' => $this->family]);
		$service->handle($filename);

		$message->attach(public_path('storage/pdf/'.$filename));

		return $message;
    }

	public function generateMemberString() {
		$members = $this->members;

		if ($members->count() == 0) {
			return '';
		}

        $memberNames = $members->map(function($m) {
            return $m->firstname.' '.$m->lastname;
        });

		$last = $memberNames->pop();

		return implode(', ', $memberNames->toArray())
			.(($memberNames->count() >= 1) ? ' und ' : '')
			.$last;
	}

    /**
     * Get the array representation of the notification.
     *
     * @param  mixed  $notifiable
     * @return array
     */
    public function toArray($notifiable)
    {
        return [
            //
        ];
    }
}
