<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\About_progress;
use File;

class ContactController extends Controller
{
    public function contact()
    {
        $header = About_header::orderBy('id', 'DESC')->get();
        return view('Backend.About.header', compact('header'));
    }
}
