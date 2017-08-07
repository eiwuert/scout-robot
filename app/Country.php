<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Country extends Model
{
    public $fillable = ['code', 'title'];

	public static function default() {
		return conf()->defaultCountry;
	}
}