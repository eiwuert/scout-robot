<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Member;
use App\Http\Requests\Payment\StoreRequest;

class MemberPaymentsController extends Controller
{
    public function index(Member $member) {
        return response()->json($member->payments()->with(['subscription.fee', 'status'])->get()->toArray());
    }

    public function store(Member $member, StoreRequest $request) {
        $request->persist();
    }
}
