<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Payment extends Model
{
    public $fillable = ['nr'];

	public $casts = [
		'amount' => 'int'
	];

	public function status() {
		return $this->belongsTo(\App\Status::class);
	}

	public function member() {
		return $this->belongsTo(\App\Member::class);
	}

	public function subscription() {
		return $this->belongsTo(Subscription::class);
	}
}
