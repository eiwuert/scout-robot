<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Collections\OwnCollection;
use Illuminate\Notifications\Notifiable;

class Member extends Model
{

	use Notifiable;

	public $fillable = ['firstname', 'lastname', 'nickname', 'other_country', 'birthday', 'joined_at', 'keepdata', 'sendnewspaper', 'address', 'further_address', 'zip', 'city', 'phone', 'mobile', 'business_phone', 'fax', 'email', 'email_parents', 'nami_id'];

	public $dates = ['joined_at', 'birthday'];

	public $casts = [
		'active' => 'boolean',
		'keepdata' => 'boolean',
		'sendnewspaper' => 'boolean',
		'gender_id' => 'integer',
		'way_id' => 'integer',
		'country_id' => 'integer',
		'region_id' => 'integer',
		'confession_id' => 'integer',
		'nami_id' => 'integer',
	];

	public function newCollection(array $models = []) {
		return new OwnCollection($models);
	}

	//----------------------------------- Getters -----------------------------------
	public function getStrikesAttribute() {
		return $this->paymentsNotPaid()->sum('amount');
	}

	//---------------------------------- Relations ----------------------------------
	public function country() {
		return $this->belongsTo(\App\Country::class);
	}

	public function gender() {
		return $this->belongsTo(\App\Gender::class);
	}

	public function region() {
		return $this->belongsTo(\App\Region::class);
	}

	public function confession() {
		return $this->belongsTo(\App\Confession::class);
	}

	public function payments() {
		return $this->hasMany(\App\Payment::class)->orderBy('nr');
	}

	public function paymentsNotPaid() {
		return $this->payments()->whereIn('status_id', [1,2]);
	}

	public function way() {
		return $this->belongsTo(Way::class);
	}

	public function nationality() {
		return $this->belongsTo(Nationality::class);
	}

	//----------------------------------- Scopes ------------------------------------
	public function scopeFamily($q, $member) {
		return $q
			->where('lastname', $member->lastname)
			->where('zip', $member->zip)
			->where('city', $member->city)
			->where('address', $member->address);
	}

	public function scopeHasNotPaidPayments($q) {
		return $q->whereHas('payments', function($q) {
			return $q->whereIn('status_id', [1])->where('amount', '>', 0);
		});
	}

	public function scopeHasReceivedPayments($q) {
		return $q->whereHas('payments', function($q) {
			return $q->whereIn('status_id', [2])->where('amount', '>', 0);
		});
	}
}
