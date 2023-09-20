@extends('Frontend.layouts.website')
@section('title', 'Our Gallery')
@section('website')
    <!-- top banner  -->
    <style>
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

        #tns1-mw {
            padding: 20px 0px;
        }
    </style>
    @foreach ($Gallery_title as $postData)
        <div class="top-banner-team height-360px"
            style="
          background: linear-gradient(
              89.92deg,
              rgba(0, 25, 64, 0.9) 51.56%,
              rgba(0, 0, 0, 0) 99.93%
            ),
            url({!! asset('assets/img/uploaded/gallery/' . $postData->image) !!});
          background-position: center;
          background-repeat: no-repeat;
          background-size: cover;>"</div>
            <div class="container">
                <div class="top-banner-team-left">
                    <h1>{{ $postData->title }}</h1>
                </div>
            </div>
        </div>
    @endforeach
    <!-- top banner  ende -->

    <!-- our gallery  -->

    <div class="our-course-page">
        <div class="container">
            <div class="our-course-header">
                @foreach ($Gallery_title as $postData)
                    <h2>{{ $postData->title }}</h2>
                @endforeach
                <div class="arrow">
                    <i class="fa-solid fa-angle-left arrow-left"></i>
                    <i class="fa-solid fa-angle-right arrow-right"></i>
                </div>
                <ul class="course-nav coursenav">
                    <li><a href="#" data-menu="all" class="course-nav-active">All Course</a></li>
                    @foreach ($Gallery_category as $postdata)
                        <li><a data-menu="{{ $postdata->id }}">{{ $postdata->name }}</a></li>
                    @endforeach
                </ul>
            </div>

            <div class="our-gallery-content">
                @foreach ($Gallery as $postData)
                    <div class="gallery-img data-filter-box" data-item="{{ $postData->gallery_id }}">
                        <img src="{!! asset('assets/img/uploaded/gallery/' . $postData->image) !!}" alt="image" />
                    </div>
                @endforeach
            </div>

            <div class="img-popup">
                <img src="" alt="Popup Image" />
                <div class="close-btn">
                    <div class="bar"></div>
                    <div class="bar"></div>
                </div>
            </div>
        </div>
    </div>

    <!-- our gallery  end -->
@endsection
