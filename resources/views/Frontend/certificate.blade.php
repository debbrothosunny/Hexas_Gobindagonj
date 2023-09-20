@extends('Frontend.layouts.website')
@section('title', 'Certificate verify')
@section('website')
    <style>
        .contact-info {
            display: flex;
            justify-content: flex-start;
            margin: 10px 0px;
        }

        .certificate-right h3 {
            font-size: 14px;
        }

        .certificate-left label {
            display: inline-block;
            color: #555555;
            margin-bottom: 5px;
        }
    </style>
    <!-- top banner  -->
    @foreach ($Certificate_title as $postData)
        <div class="top-banner-team height-360px"
            style="
                background: linear-gradient(
                    89.92deg,
                    rgba(0, 25, 64, 0.9) 51.56%,
                    rgba(0, 0, 0, 0) 99.93%
                ),
                url({!! asset('assets/img/uploaded/certificate/' . $postData->image) !!});
                background-position: center;
                background-repeat: no-repeat;
                background-size: cover;
                ">
            <div class="container">
                <div class="top-banner-team-left">
                    <h1>{!! $postData->title !!}</h1>
                </div>
            </div>
        </div>
    @endforeach


    <!-- top banner  end -->

    <!-- certificate -->
    @if (Session::has('datas'))
        <div class="alert-success p-3 mb-3">{{ Session::get('datas') }}</div>
    @endif
    <div class="certificate">
        <div class="container">
            <div class="certificate-content">
                <div class="certificate-left">
                    <form action="{!! route('certificate.verify') !!}" method="GET">
                        <h3>Verify Your Certificate</h3>
                        <div class="certificate-input">
                            <label for="">ID</label>
                            <input type="text" name="s_id" id="sid" placeholder="Enter Your Student ID" />
                        </div>
                        <div class="certificate-input">
                            <label for="">Enter Your Name</label>
                            <input type="text" name="name" id="name" placeholder="Enter Your Name" />
                        </div>
                        <div class="certificate-input">
                            <label for="">Batch</label>
                            <input type="text" name="batch" id="sn" placeholder="Enter Your Batch" />
                        </div>
                        <div class="certificate-input">
                            <label for="">Date Of Birth</label>
                            <input type="date" name="issue_date" id="Idate" placeholder="Issue Date" />
                        </div>
                        <button id="click" type="submit">Verify</button>
                    </form>
                </div>

                @if ($Certificate_verified ?? '' != '')
                    <div class="certificate-right" style="margin-top: 37px;">
                        <div class="" style="background: #f5f3f3;padding: 40px;">
                            <h2 style="font-size: 30px;font-weight: 400;" class="contact-title">Verified <i
                                    class="fa-solid fa-check-to-slot"></i></h2>
                            <table>
                                <thead>
                                    <tr>
                                        <td>S/N</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>:</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <th>{{ $Certificate_verified->sn ?? '' }}</th>
                                    </tr>
                                    <tr>
                                        &nbsp;
                                    </tr>
                                    <tr>
                                        <td>ID NO</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>:</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <th>{{ $Certificate_verified->s_id ?? '' }}</th>
                                    </tr>
                                    <tr>
                                        &nbsp;
                                    </tr>
                                    <tr>
                                        <td>Issue Date</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>:</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <th>{{ $Certificate_verified->issue_date ?? '' }}</th>
                                    </tr>
                                    <tr>
                                        &nbsp;
                                    </tr>
                                    <tr>
                                        <td>Name</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>:</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <th>{{ $Certificate_verified->name ?? '' }}</th>
                                    </tr>
                                    <tr>
                                        &nbsp;
                                    </tr>
                                    <tr>
                                        <td>Course Name</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>:</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <th>{{ $Certificate_verified->course ?? '' }}</th>
                                    </tr>
                                    <tr>
                                        <td>Batch</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>:</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <th>{{ $Certificate_verified->batch ?? '' }}</th>
                                    </tr>
                                    <tr>
                                        &nbsp;
                                    </tr>
                                    <tr>
                                        <td>Result</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>:</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <th>{{ $Certificate_verified->result ?? '' }}</th>
                                    </tr>
                                    <tr>
                                        &nbsp;
                                    </tr>
                                    <tr>
                                        <td>Course Starting date</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>:</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <th>{{ $Certificate_verified->course_start_date ?? '' }}</th>
                                    </tr>
                                    <tr>
                                        &nbsp;
                                    </tr>
                                    <tr>
                                        <td>Course Ending date</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>:</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <th>{{ $Certificate_verified->course_end_date ?? '' }}</th>
                                    </tr>

                                </thead>
                            </table>
                        </div>
                    </div>
                @else
                    <div class="certificate-right" style="margin-top: 30px;">
                        <div class="" style="background: #decdcd;height:45vh;">
                            <p style="line-height: 45vh;text-align: center;">Please Instert valid Data !</p>
                        </div>
                    </div>
                @endif
            </div>
        </div>
    </div>
    <!-- certificate -->
@endsection
