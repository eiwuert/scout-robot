<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Member;
use App\Http\Requests\Member\MemberStoreRequest;
use App\Http\Requests\Member\MemberUpdateRequest;

class MemberController extends Controller
{

	public function index() {
		$this->authorize('index', Member::class);
		return response()->json(Member::active()->get()->toArray());
	}

    public function store(MemberStoreRequest $request) {
    	$request->persist();
    }

	public function update(Member $member, MemberUpdateRequest $request) {
		$request->persist($member);
	}

	public function show(Member $member) {
		$this->authorize('index', Member::class);
		return response()->json($member->load(['gender', 'region', 'country', 'confession'])->toArray());
	}
}
