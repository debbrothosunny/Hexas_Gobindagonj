<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>@yield('title')</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tiny-slider/2.9.4/tiny-slider.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css"
        integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
    <link rel="stylesheet" href="{{ asset('assets/Frontend/assets/css/style.css') }}" />
    {{-- toastr --}}
    <link href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/2.0.1/css/toastr.css" rel="stylesheet" />
    {{-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />  --}}
    <style>
        .modal {
            visibility: hidden;
            opacity: 0;
            position: absolute;
            top: 0;
            right: 0;
            bottom: 0;
            left: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            background: transparent;
            transition: all .4s;
        }

        .modal:target {
            visibility: visible;
            opacity: 1;
        }

        .modal__content {
            border-radius: 4px;
            position: relative;
            max-width: 100%;
            background: transparent;
            /* padding: 1em 2em; */
            height: auto;
        }

        .modal__footer {
            text-align: right;

            a {
                color: #585858;
            }

            i {
                color: #d02d2c;
            }
        }

        .modal__close {
            position: absolute;
            top: 0px;
            right: 10px;
            color: yellow;
            text-decoration: none;
            font-size: 30px;
        }

        @media (max-width: 620px) {
            iframe {
                border: 0;
                width: 300px !important;
                height: 200px !important;
            }
        }

        .nav-active {
            color: red !important;
        }
        .tns-nav{
            display: none;
        }
    </style>
</head>

<body>
    <!-- header -->
    <header>
        <div class="container">
            <div class="header-container">
                @foreach ($site as $postData)
                    <h1 class="logo">
                        <a href="{{ url('/') }}"><img src="{!! asset('assets/img/uploaded/site/' . $postData->logo) !!}" alt="logo" /></a>
                    </h1>
                @endforeach
                <ul class="nav">
                    <li><a href="{{ url('/') }}" class="{{ request()->is('/') ? 'nav-active' : '' }}">Home</a></li>
                    <li><a href="{{ url('/about') }}" class="{{ request()->is('about') ? 'nav-active' : '' }}">About
                            Us</a></li>
                    <li><a href="{{ url('/course') }}"
                            class="{{ request()->is('course') ? 'nav-active' : '' }}">Course</a></li>
                    <li><a href="{{ url('/team') }}" class="{{ request()->is('team') ? 'nav-active' : '' }}">Team</a>
                    </li>
                    <li><a href="{{ url('/gallery') }}"
                            class="{{ request()->is('gallery') ? 'nav-active' : '' }}">Gallery</a></li>
                    <li><a href="{{ url('/certificate') }}"
                            class="{{ request()->is('certificate') ? 'nav-active' : '' }}">Certificate Verify</a></li>
                    <li><a href="{{ url('/blog') }}" class="{{ request()->is('blog') ? 'nav-active' : '' }}">Blog</a>
                    </li>
                    <li class="contact-mini"><a href="{{ url('/contact') }}"
                            class="contact {{ request()->is('contact') ? 'nav-active' : '' }}">Contact</a></li>
                </ul>
                <a href="{{ url('/contact') }}" class="contact">Contact</a>
                <div id="menu"><i class="fa-solid fa-bars"></i></div>
            </div>
        </div>
    </header>

    <!-- header end -->
    @yield('website')

    <!-- footer  -->
    @foreach ($site as $postData)
        <footer>
            <div class="container">
                <div class="footer-content">
                    <div class="footer-logo">
                        <div class="logo">
                            <img src="{!! asset('assets/img/uploaded/site/' . $postData->logo) !!}" alt="logo" />
                        </div>
                        <p>{!! $postData->description !!}</p>

                        <div class="footer-social">
                            <a href="{!! $postData->social_1 !!}"><img style="width: 35px;"
                                    src="{{ asset('assets/Frontend/assets/img/icons8-facebook.svg') }}"
                                    alt="social" /></a>
                            <a href="{!! $postData->social_2 !!}"><img style="width: 35px;"
                                    src="{{ asset('assets/Frontend/assets/img/icons8-twitter.svg') }}"
                                    alt="social" /></a>
                            <a href="{!! $postData->social_3 !!}"><img style="width: 35px;"
                                    src="{{ asset('assets/Frontend/assets/img/icons8-instagram.svg') }}"
                                    alt="social" /></a>
                        </div>
                    </div>

                    <ul class="footer-item">
                        <h2>Get Our Link</h2>
                        <li><a href="{{ url('/') }}">Home</a></li>
                        <li><a href="{{ url('/about') }}">About Us</a></li>
                        <li><a href="{{ url('/course') }}">Course</a></li>
                        <li><a href="{{ url('/team') }}">Team</a></li>
                        <li><a href="{{ url('/gallery') }}">Gallery</a></li>
                        <li><a href="{{ url('/certificate') }}">Certificate Verify</a></li>
                        <li><a href="{{ url('/blog') }}">Blog</a></li>
                        <li><a href="{{ url('/contact') }}" class="contact">Contact</a></li>
                    </ul>
                    <ul class="footer-item">
                        <h2>Get Our Link</h2>
                        <li>Unique places to stay</li>
                        <li>All destinations</li>
                        <li>Discover</li>
                        <li>Reviews</li>
                        <li>Unpacked: Travel articles</li>
                        <li>Travel Communities</li>
                        <li>Seasonal and holiday deals</li>
                    </ul>

                    <ul class="footer-item">
                        <h2>Customer Service help</h2>
                        <li>Coronavirus (COVID-19) FAQs</li>
                        <li>About Booking.com</li>
                        <li>Customer Service help</li>
                        <li>Partner help</li>
                        <li>Careers</li>
                        <li>Sustainability</li>
                        <li>Press centre</li>
                    </ul>
                </div>
            </div>
            <div class="footer-end">
                <p>Developed by <a href="https://opstelit.com/" target="_blank">Opstel IT</a> <?php echo date('Y'); ?></p>
            </div>
        </footer>
    @endforeach
    <!-- footer  end -->

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/tiny-slider/2.9.2/min/tiny-slider.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
    <script src="{{ asset('assets/Frontend/assets/js/app.js') }}"></script>
    <script>
        const control = document.querySelector(".arrow");

        var slider = tns({
            container: ".course-content",
            items: 3,
            slideBy: 1,
            autoplay: true,
            loop: true,

            autoplayResetOnVisibility: false,
            autoplayButtonOutput: false,
            autoplay: true,

            nav: false,
            gutter: 30,
            mouseDrag: true,

            controlsContainer: control,
            prevButton: ".arrow-left",
            nextButton: ".arrow-right",
            responsive: {
                0: {
                    items: 1,
                },
                768: {
                    items: 2,
                },
                1200: {
                    items: 3,
                },
            },
        });

        const control2 = document.querySelector(".review-arrow");

        var slider = tns({
            container: ".review-content",
            items: 3,
            slideBy: 1,
            autoplay: true,
            loop: true,
            autoplayResetOnVisibility: false,
            autoplayButtonOutput: false,
            autoplay: true,
            nav: false,
            mouseDrag: true,
            controlsContainer: control2,
            prevButton: ".review-left",
            nextButton: ".review-right",
            gutter: 30,
            responsive: {
                0: {
                    items: 1,
                },
                768: {
                    items: 2,
                },
                1200: {
                    items: 3,
                },
            },
        });
    </script>
    <script>
        var slider = tns({
            container: '.coursenav',
            items: 5,
            slideBy: 1,
            autoplay: true,
            loop: true,

            autoplayResetOnVisibility: false,
            autoplayButtonOutput: false,
            autoplay: true,

            nav: false,
            gutter: 20,
            mouseDrag: true,

            controlsContainer: control,
            prevButton: ".arrow-left",
            nextButton: ".arrow-right",
            responsive: {
                0: {
                    items: 2,
                },
                768: {
                    items: 4,
                },
                1200: {
                    items: 5,
                },
            },
        });
    </script>
    {{-- toastr js --}}
    <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/2.0.1/js/toastr.js"></script>
    <script>
        $(document).ready(function() {
            toastr.options.timeOut = 3000;
            @if (Session::has('error'))
                toastr.error('{{ Session::get('error') }}');
            @elseif (Session::has('success'))
                toastr.success('{{ Session::get('success') }}');
            @endif
        });
    </script>
</body>

</html>
