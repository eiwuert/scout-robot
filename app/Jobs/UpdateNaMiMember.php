<?php

namespace App\Jobs;

use Illuminate\Bus\Queueable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use App\Member;
use App\Facades\NaMi\NaMiMember;

class UpdateNaMiMember implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    public $member;
    public $oldmember;

    /**
     * Create a new job instance.
     *
     * @return void
     */
    public function __construct(Member $member, $oldmember)
    {
        $this->member = $member;
        $this->oldmember = $oldmember;
    }

    /**
     * Execute the job.
     *
     * @return void
     */
    public function handle()
    {
		NaMiMember::patch($this->member);
    }
}
