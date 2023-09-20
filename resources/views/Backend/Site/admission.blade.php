@extends('Backend.layouts.app')
@section('content')
    {{-- container --}}
    <div class="container-xxl flex-grow-1 container-p-y">
        <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">Tables /</span> Admission Tables</h4>
        <!-- Basic Bootstrap Table -->
        <div class="card">
            <div class="mt-4 mb-3">
                <nav class="navbar navbar-example navbar-expand-lg">
                    <div class="container-fluid">
                        <div class="collapse navbar-collapse" id="navbar-ex-4">
                            <div class="navbar-nav me-auto">
                                <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                                    data-bs-target="#largeModal">Modal</button>
                            </div>
                            <form class="d-flex">
                                <div class="input-group">
                                    <span class="input-group-text"><i class="tf-icons bx bx-search"></i></span>
                                    <input type="text" class="form-control" placeholder="Search...">
                                </div>
                            </form>
                        </div>
                    </div>
                </nav>
            </div>
            <div class="table-responsive text-nowrap">
                <table class="table">
                    <thead>
                        <tr>
                            <th>Name</th>
                            <th>Course</th>
                            <th>Phone Number</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody class="table-border-bottom-0">
                        @forelse ($admission as $postData)
                            <tr>
                                <td>{{ $postData->name }}</td>
                                <td>{{ $postData->course }}</td>
                                <td>{{ $postData->phone }}</td>

                                <td>
                                    <button type="button" class="btn btn-danger" data-bs-toggle="modal"
                                        data-bs-target="{{ '#dlt' . $postData->id . 'delete' }}"><i
                                            class="bx bx-trash me-1"></i></button>
                                </td>
                            </tr>
                        @empty
                            <tr>
                                <th></th>
                                <th></th>
                                <th class="text-center">Data Not Found</th>
                            </tr>
                        @endforelse
                    </tbody>
                </table>
            </div>
        </div>
        <!--/ Basic Bootstrap Table -->
    </div>
    {{-- container End  --}}

    <!-- Delete Modal -->
    @foreach ($admission as $postData)
        <div class="modal fade" data-bs-backdrop="static" id="{{ 'dlt' . $postData->id . 'delete' }}" tabindex="-1"
            aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel3">Admission Delete</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <form action="{{ route('admission.delete', $postData->id) }}" method="get"
                        enctype="multipart/form-data">
                        @csrf
                        <div class="modal-body">
                            <h5 class="text-center">Are You Sure?</h5>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">
                                Close
                            </button>
                            <button type="submit" class="btn btn-danger">Delete</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    @endforeach
    {{-- End Modal  --}}
@endsection
