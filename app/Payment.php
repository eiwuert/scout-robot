<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Payment extends Model
{
    public $fillable = ['amount', 'nr'];

	public function status() {
		return $this->belongsTo(\App\Status::class);
	}
}
