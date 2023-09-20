@extends('Frontend.layouts.website')

@section('title', "$Blog_post->meta_title")
@section('description', "$Blog_post->meta_description")
@section('keywords', "$Blog_post->meta_keyword")

@section('website')
    <!-- top banner  -->
    @foreach ($Blog_header as $postData)
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
          background-size: cover;
        ">
            <div class="container">
                <div class="top-banner-team-left">
                    <h1>{{ $postData->title }}</h1>
                </div>
            </div>
        </div>
    @endforeach
    <!-- top banner  ende -->

    <!-- blog details  -->
    <div class="blog-details">
        <div class="container">
            <div class="blog-details-box">
                <div class="blog-details-main-img">
                    <img src="{!! asset('assets/img/uploaded/blog/' . $Blog_post->image) !!}" alt="img" />
                </div>

                <div class="blog-details-main-text">
                    <h2>{{ $Blog_post->title }}</h2>

                    <div class="blog-res">
                        <div class="blog-res-box">
                            <i class="fa-solid fa-earth-americas"></i>
                            <small>{{ $Blog_post->created_at->format('d-m-Y') }}</small>
                        </div>
                        <div class="blog-res-box">
                            <i class="fa-solid fa-user"></i>
                            <small>{{ $Blog_post->CatName->name ?? '' }}</small>
                        </div>
                    </div>
                    <p>
                        {!! $Blog_post->description_1 !!}
                    </p>
                    <p>
                        {!! $Blog_post->description_2 !!}
                    </p>

                    <div class="q-text">
                        <div class="q-left"><i class="fa-solid fa-quote-left"></i></div>
                        <div class="q-right">
                            <h4>
                                {!! $Blog_post->description_3 !!}
                            </h4>
                        </div>
                    </div>

                    <div class="blog-tags">
                        <h5>Tags:</h5>
                        @foreach ($Blog_category as $postData)
                            <a href="javascript:void(0);">{{ $postData->name }}</a>
                        @endforeach
                    </div>
                    <div class="blog-comment">
                        <h3>Comments({{ $comment->count('id') }})</h3>
                        @foreach ($comment as $postData)
                            <div class="blog-commnet-container">
                                <div class="blog-comment-content">
                                    <div class="blog-comment-profile">
                                        <div class="blog-comment-profile-box">
                                            <div class="blog-details-comment-img">
                                                <img src="{{ asset('assets/Frontend/assets/img/profile.jpg') }}"
                                                    alt="img" />
                                            </div>
                                            <div class="blog-details-comment-text">
                                                <h5>User {{ $loop->iteration }}</h5>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="blog-comment-text">
                                        <p>{{ $postData->comment }}</p>
                                    </div>
                                </div>
                            </div>
                        @endforeach
                    </div>

                    <div class="leave-reply">
                        @if (Session::has('success'))
                            <div id="alert" style="background: #71e1c247;border-radius: 7px;font-size: 17px;"
                                class="alert-success p-3 mb-3">Comment Submit Successfully</div>
                        @endif
                        <h4>Leave a Reply</h4>
                        <form action="{!! route('comment') !!}" method="POST" enctype="multipart/form-data">
                            @csrf
                            <input type="hidden" name="post_id" value="{{ $Blog_post->id }}">
                            <textarea placeholder="Your Comment" name="comment" id="YourComment"></textarea>
                            <span class="text-danger">
                                @error('comment')
                                    {{ $message }}
                                @enderror
                            </span>
                            <div class="reply-check">
                            </div>
                            <button type="submit">Post a Comment</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- blog details  end -->
    <script>
        document.addEventListener("DOMContentLoaded", function(event) {
            var scrollpos = localStorage.getItem('scrollpos');
            if (scrollpos) window.scrollTo(0, scrollpos);
        });

        window.onbeforeunload = function(e) {
            localStorage.setItem('scrollpos', window.scrollY);
        };
    </script>
@endsection
