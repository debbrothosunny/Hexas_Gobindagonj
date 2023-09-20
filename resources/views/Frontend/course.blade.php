@extends('Frontend.layouts.website')
@section('title', 'Our Courses')
@section('website')
    <style>
        .filterDiv {
            display: none;
        }

        .show {
            display: block;
        }

        .arrow {
            display: flex !important;
            justify-content: right;
            padding: 15px 0px;
        }

        .arrow i {
            border-radius: 5px;
            background: #dfe6f0;
            color: var(--dark-blue);
            transition: all 0.4s ease;
            padding: 15px 20px;
            margin: 0px 5px
        }

        .arrow i:hover {
            color: #dfe6f0;
            background: var(--dark-blue);
        }
    </style>
    <!-- top banner  -->
    @foreach ($header as $postData)
        <div class="top-banner-center"
            style="
        background: linear-gradient(
            89.92deg,
            rgba(0, 25, 64, 0.9) 51.56%,
            rgba(0, 0, 0, 0) 99.93%
          ),
          url({{ asset('assets/Frontend/assets/img/top-banner/banner-home.jpg') }});
          url{!! asset('assets/img/uploaded/course/' . $postData->image) !!};
        background-position: center;
        background-repeat: no-repeat;
        background-size: cover; 
      ">
            <div class="container">
                <h1>{!! $postData->title !!}</h1>

                <p>{!! $postData->description !!}</p>

                <div class="top-banner-center-btn">
                    <a href="#demo-modal3">Book Now</a>
                    <a href="{{ url('/contact') }}">Contact us</a>
                </div>
            </div>
        </div>
    @endforeach
    <!-- top banner  ende -->
    {{-- Contact Modal  --}}
    <div id="demo-modal3" class="modal">
        <div class="modal__content">
            <div class="leave-reply" style="border-radius: 5px;">
                <h4>Addmission Now</h4>
                <p>Get in Touch With Us</p>
                <form action="{!! route('create.admission') !!}" method="POST" enctype="multipart/form-data">
                    @csrf
                    @if (Session::has('success'))
                        <div id="alert" style="background: #71e1c247;border-radius: 7px;font-size: 17px;"
                            class="alert-success p-3 mb-3">Admission Successfully</div>
                    @endif
                    @csrf
                    <div class="reply-input">
                        <input required placeholder="Your Name" type="text" name="name" id="name" />
                        <input required placeholder="Your Course Name" type="text" name="course" id="course" />
                        <input required placeholder="Your Number" type="text" name="phone" id="phone" />
                    </div>

                    <div class="reply-check">
                        <span class="text-danger">
                            @error('number')
                                {{ $message }}
                            @enderror
                        </span>
                        <span class="text-danger">
                            @error('course')
                                {{ $message }}
                            @enderror
                        </span>
                        <span class="text-danger">
                            @error('name')
                                {{ $message }}
                            @enderror
                        </span>
                    </div>
                    <button type="submit">Submit</button>
                </form>
            </div>
            <a href="#" class="modal__close">&times;</a>
        </div>
    </div>
    {{-- Contact Modal End --}}
    <!-- our course  -->

    <div class="our-course-page">
        <div class="container">
            <div class="our-course-header">
                <h2>Our popular course</h2>
                <div class="arrow">
                    <i class="fa-solid fa-angle-left arrow-left"></i>
                    <i class="fa-solid fa-angle-right arrow-right"></i>
                </div>
                <ul class="course-nav coursenav" id="myBtnContainer">
                    <li><a href="javascript:void(0);" onclick="filterSelection('all')" class="course-nav-active btn">All
                            Course</a></li>
                    @foreach ($cat as $postData)
                        <li><a class="btn" onclick="filterSelection('{{ $postData->id }}')">{{ $postData->name }}</a>
                        </li>
                    @endforeach
                </ul>
            </div>

            <div class="our-course-content ">
                @foreach ($course as $postData)
                    <div class="our-course-box filterDiv {{ $postData->cat_id }}">
                        <div class="our-course-img">
                            <img src="{!! asset('assets/img/uploaded/course/' . $postData->image) !!}" alt="course" />
                        </div>
                        <div class="our-course-text">
                            <a href="{{ url('/course/single') }}/{{ $postData->id }}">
                                <h3>{{ $postData->title }}</h3>
                            </a>
                            <div class="our-course-btn">
                                <a href="#">Time: {{ $postData->time }}</a>
                                <a href="#">Fee: {{ $postData->fee }} TK</a>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </div>
    <!-- our course  end -->

    {{-- Course Tab Start --}}
    <script>
        filterSelection("all")

        function filterSelection(c) {
            var x, i;
            x = document.getElementsByClassName("filterDiv");
            if (c == "all") c = "";
            for (i = 0; i < x.length; i++) {
                w3RemoveClass(x[i], "show");
                if (x[i].className.indexOf(c) > -1) w3AddClass(x[i], "show");
            }
        }

        function w3AddClass(element, name) {
            var i, arr1, arr2;
            arr1 = element.className.split(" ");
            arr2 = name.split(" ");
            for (i = 0; i < arr2.length; i++) {
                if (arr1.indexOf(arr2[i]) == -1) {
                    element.className += " " + arr2[i];
                }
            }
        }

        function w3RemoveClass(element, name) {
            var i, arr1, arr2;
            arr1 = element.className.split(" ");
            arr2 = name.split(" ");
            for (i = 0; i < arr2.length; i++) {
                while (arr1.indexOf(arr2[i]) > -1) {
                    arr1.splice(arr1.indexOf(arr2[i]), 1);
                }
            }
            element.className = arr1.join(" ");
        }

        // Add active class to the current button (highlight it)
        var btnContainer = document.getElementById("myBtnContainer");
        var btns = btnContainer.getElementsByClassName("btn");
        for (var i = 0; i < btns.length; i++) {
            btns[i].addEventListener("click", function() {
                var current = document.getElementsByClassName("course-nav-active");
                current[0].className = current[0].className.replace("course-nav-active", "");
                this.className += " course-nav-active";
            });
        }
    </script>
    {{-- Course Tab End --}}
@endsection
