<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class FeeController extends Controller
{
    public function index() {
    	return response()->json(\App\Fee::get()->toArray());
    }
}
