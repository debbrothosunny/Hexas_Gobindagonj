<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use File;
use App\Models\Home_header;
use App\Models\Home_about;
use App\Models\Home_offer_title;
use App\Models\Home_offer_content;
use App\Models\Home_choose;
use App\Models\Home_app;
use App\Models\Home_testimonial_title;
use App\Models\Home_testimonial_content;
use App\Models\Home_trainer;

use App\Models\About_header;
use App\Models\About_services;
use App\Models\About_progress;

use App\Models\Course_header;
use App\Models\Course_category;
use App\Models\Course;

use App\Models\Team_header;
use App\Models\Team_member;


use App\Models\Gallery_title;
use App\Models\Gallery_category;
use App\Models\Gallery;

use App\Models\Certificate_title;
use App\Models\Certificate;
use App\Models\admission;

use App\Models\{Blog_header,Blog_category,Blog_post,Comment,Contact};

use App\Models\Site_setting;

class FrontendController extends Controller
{
    public function home()
    {

        $header = Home_header::orderBy('id', 'DESC')->get()->take('3');
        $about = Home_about::orderBy('id', 'DESC')->get()->take('1');
        $offer_title = Home_offer_title::orderBy('id', 'DESC')->get()->take('1');
        $offer_content = Home_offer_content::orderBy('id', 'DESC')->get()->take('3');
        $choose = Home_choose::orderBy('id', 'DESC')->get()->take('1');
        $course = Course::orderBy('id', 'DESC')->get();
        $app = Home_app::orderBy('id', 'DESC')->get()->take('1');
        $trainer = Home_trainer::orderBy('id', 'DESC')->get()->take('1');
        $testimonial_content = Home_testimonial_content::orderBy('id', 'DESC')->get()->take('4');
        $testimonial_title = Home_testimonial_title::orderBy('id', 'DESC')->get()->take('1');
        $site = Site_setting::orderBy('id', 'DESC')->get()->take('1');

        return view('Frontend.index', compact('header','about','offer_content','offer_title','choose','course','app','trainer','testimonial_content','testimonial_title','site'));
    }

    // About Page
    public function about()
    {
        $site = Site_setting::orderBy('id', 'DESC')->get()->take('1');

        $header = About_header::orderBy('id', 'DESC')->get()->take('1');
        $choose = Home_choose::orderBy('id', 'DESC')->get()->take('1');
        $service = About_services::orderBy('id', 'DESC')->get()->take('1');
        $progress = About_progress::orderBy('id', 'ASC')->get()->take('3');
        $testimonial_content = Home_testimonial_content::orderBy('id', 'DESC')->get();
        $testimonial_title = Home_testimonial_title::orderBy('id', 'DESC')->get()->take('1');
        $app = Home_app::orderBy('id', 'DESC')->get()->take('1');

        return view('Frontend.about', compact('header','site','choose','service','progress','testimonial_content','testimonial_title','app'));
    }

    // Course Page
    public function course()
    {
        $site = Site_setting::orderBy('id', 'DESC')->get()->take('1');
        $header = Course_header::orderBy('id', 'DESC')->get();
        $cat = Course_category::orderBy('id', 'DESC')->get();
        $course = Course::orderBy('id', 'DESC')->get();

        return view('Frontend.course', compact('header','site','course','cat'));
    }

    // Course Page
    public function course_single($id)
    {
        $site = Site_setting::orderBy('id', 'DESC')->get()->take('1');
        $header = Course_header::orderBy('id', 'DESC')->get();
        $course = Course::find($id);

        return view('Frontend.courseDetails', compact('header','site','course'));
    }



    // Team Page
    public function team()
    {
        $site = Site_setting::orderBy('id', 'DESC')->get()->take('1');
        $header = Team_header::orderBy('id', 'DESC')->get();
        $team = Team_member::orderBy('id', 'DESC')->get()->take('9');

        return view('Frontend.team', compact('header','site','team'));
    }

    // Gallery Page
    public function gallery()
    {
        $site = Site_setting::orderBy('id', 'DESC')->get()->take('1');
        $Gallery_title = Gallery_title::orderBy('id', 'DESC')->get();
        $Gallery_category = Gallery_category::orderBy('id', 'DESC')->get();
        $Gallery = Gallery::orderBy('id', 'DESC')->get();

        return view('Frontend.gallery', compact('Gallery_title','site','Gallery_category','Gallery'));
    }


    // Certificate Page

    public function certificate(Request $request)
    {
        $site = Site_setting::orderBy('id', 'DESC')->get()->take('1');
        $Certificate_title = Certificate_title::orderBy('id', 'DESC')->get()->take('1');
        $Certificate = Certificate::orderBy('id', 'DESC')->get()->take('1');

        $Certificate_verified  = Certificate::where('s_id',$request->s_id)
                                ->where('batch',$request->batch)
                                ->where('name',$request->name)
                                ->where('issue_date',$request->issue_date)
                                ->first();
        return view('Frontend.certificate', compact('Certificate_title','site','Certificate','Certificate_verified'));
    }
    // Blog Page

    public function blog()
    {
        $site = Site_setting::orderBy('id', 'DESC')->get()->take('1');
        $Blog_header = Blog_header::orderBy('id', 'DESC')->get()->take('1');
        $Blog_category = Blog_category::orderBy('id', 'DESC')->get()->take('1');
        $Blog_post = Blog_post::orderBy('id', 'DESC')->get()->take('4');
        return view('Frontend.blog', compact('Blog_header','site','Blog_category','Blog_post'));
    }

    public function contact()
    {
        $site = Site_setting::orderBy('id', 'DESC')->get()->take('1');

        return view('Frontend.contact', compact('site'));
    }

    // Blog Details Page

    public function blog_Single($id)
    {
        $site = Site_setting::orderBy('id', 'DESC')->get()->take('1');
        $Blog_category = Blog_category::orderBy('id', 'DESC')->get()->take('4');
        $Blog_header = Blog_header::orderBy('id', 'DESC')->get()->take('1');
        $comment = Comment::OrderBy('id','ASC')->where('post_id', $id)->get();
        $Blog_post = Blog_post::orderBy('id', 'DESC')->find($id);

        return view('Frontend.blog_details', compact('site','Blog_category','Blog_post','Blog_header','comment'));
    }


    // Comment Section
    public function comment(){
        $comment = Comment::OrderBy('id','DESC')->get();
        return view('Backend.Blog.comment',compact('comment'));
    }
    //Blog Category Create
    public function comment_create(Request $request)
    {
        $request->validate([
            'post_id'=>'nullable',
            'comment'=>'nullable|max:750',
        ]);

        $Comment= new Comment;
        $Comment -> post_id=$request->post_id;

        $Comment -> comment=$request->comment;



        $Comment->save();

        if ($request) {
            return back()->with('success', 'Successfully! Submit Your Comment');
        } else {
            return back()->with('failed', 'Something Wrong');
        }
    }
    public function Comment_delete(Request $request, $id)
    {
        $Comment_delete= Comment::find($id);

        $Comment_delete->delete();

        if ($request) {
            return back()->with('success', 'Successfully! Deleted');
        } else {
            return back()->with('failed', 'Something Wrong');
        }
    }

        // Message -------

    // Our Card Price
    public function Message()
    {
        $Message = Contact::orderBy('id', 'DESC')->paginate();
        return view('Backend.Site.contact', compact('Message'));
    }
    // Create
    public function Message_create(Request $request)
    {
        $request->validate([
            'name' => 'required|max:200',
            'email' => 'required|max:200',
            'phone' => 'required|max:200',
            'comment' => 'required|max:750',
        ]);

        $Message = new Contact;

        $Message->name = $request->name;
        $Message->email = $request->email;
        $Message->phone = $request->phone;
        $Message->comment = $request->comment;

        $Message->save();

        if ($request) {

            return back()->with('success', 'Successfully! Message Send');
        } else {
            return back()->with('fail', 'Something Wrong');
        }
    }
    // Delete
    public function Message_delete(Request $request, $id)
    {
        $Message_delete= Contact::find($id);
        $Message_delete->delete();

        if ($request) {
            return back()->with('success', 'Successfully! Message Deleted');
        } else {
            return back()->with('failed', 'Something Wrong');
        }
    }

    // admission
    // Our Card Price
    public function admission()
    {
        $admission = admission::orderBy('id', 'DESC')->paginate();
        return view('Backend.Site.admission', compact('admission'));
    }
    // Create
    public function admission_create(Request $request)
    {
        $request->validate([
            'name' => 'required|max:200',
            'course' => 'required|max:200',
            'phone' => 'required|max:200',
        ]);

        $admission = new admission;

        $admission->name = $request->name;
        $admission->course = $request->course;
        $admission->phone = $request->phone;

        $admission->save();

        if ($request) {

            return back()->with('success', 'Successfully! admission Send');
        } else {
            return back()->with('fail', 'Something Wrong');
        }
    }
    // Delete
    public function admission_delete(Request $request, $id)
    {
        $admission_delete= admission::find($id);
        $admission_delete->delete();

        if ($request) {
            return back()->with('success', 'Successfully! admission Deleted');
        } else {
            return back()->with('failed', 'Something Wrong');
        }
    }
}
