<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\ProfileUpdateRequest;
use App\Http\Requests\ProfilePasswordUpdateRequest;
use App\User;

class ProfileController extends Controller
{
	/**
	 * Gets the data for the currently logged in user
	 *
	 * @return JSON
	 */
    public function index() {
    	return response()->json(auth()->guard('api')->user()->load('usergroup.rights')->toArray());
    }

	public function update(User $user, ProfileUpdateRequest $request) {
		$request->persist($user);
	}

	public function updatePassword(User $user, ProfilePasswordUpdateRequest $request) {
		$request->persist($user);
	}
}
