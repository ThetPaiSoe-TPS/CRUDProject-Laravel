@extends('layout.master')

@section('content')
    <div class="container">
        <div class="row gap-5">
            <div class="col-lg-4">
                {{-- @session('success')
                <div class="alert alert-success form-control" role="alert">
                    <b class="alert-heading"> {{ session('success') }} </b>
                </div>
                @endsession

                @session('blogDelete')
                <div class="alert alert-success" role="alert">
                    {{ session('blogDelete') }}
                </div>
                @endsession --}}
                <form id="contactForm" action=" {{ route('createBlog') }}" data-sb-form-api-token="API_TOKEN" method="POST" enctype="multipart/form-data">
                    @csrf
                    <div class="mt-3">
                        <img src="" alt=""  id="output" class="img-fluid mb-3 @error('image') is-invalid @enderror" >
                        <input type="file" class="form-control" onchange="loadfile(event)" name="image" >
                        @error('image')
                            <div class="invalid-feedback">{{ $message }}</div>
                        @enderror
                    </div>
                    <div class="mt-3">
                        <input type="text" value="{{ old('title') }}" class="form-control @error('title') is-invalid @enderror" placeholder="Enter blog title" name="title">
                        @error('title')
                            <div class="invalid-feedback" >{{ $message }}</div>
                        @enderror
                    </div>
                    <div class=" mt-3 @error('description') is-invalid @enderror">
                        <textarea class="form-control" name="description" id="" cols="30" rows="10" placeholder="Enter some description">{{ old('description') }}</textarea>
                    </div>
                    @error('description')
                            <div class="invalid-feedback">{{ $message }}</div>
                        @enderror
                    <div class="mt-3">
                        <input type="text" value="{{ old('writer') }}" class="form-control  @error('writer') is-invalid @enderror" placeholder="Enter blog blog writer" name="writer">
                        @error('writer')
                            <div class="invalid-feedback">{{ $message }}</div>
                        @enderror
                    </div>
                    <div class="mt-3 col-md-4 col-lg-12">
                        <input type="submit" class=" form-control bg-dark text-white" value="Create">
                    </div>
                </form>
            </div>
            {{-- card --}}
            <div class="col-lg">
                <form action=" {{ route('listPage') }} " method="get">
                    @csrf
                    <div class="row">
                        <div class="col-6">
                            <div class="input-group mb-3">
                                <input type="text" class="form-control" value=" {{ request('searchKey') }} " name="searchKey" placeholder="Search Blog title..." aria-label="Recipient's username" aria-describedby="button-addon2">
                                <button class="btn btn-outline-secondary" type="submit" id="button-addon2"><i class="fa-solid fa-magnifying-glass"></i></button>
                              </div>
                        </div>
                    </div>
                </form>
                @foreach ($result as $data)
                <div class="card mb-5 shadow">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-6 mb-3 d-flex flex-column">
                                <img src=" {{ asset('blogImages/'.$data['image']) }} " class=" w-100 img-thumbnail" alt="">

                            </div>
                            <div class=" col-md-6">
                                <h3>{{$data-> title}}</h3>
                                <p> {{ Str::words($data-> description, 30, '...') }} </p>

                            </div>

                            <div class="row">
                                <div class="col">
                                    <a href=" {{ url('details/'. $data['id']) }} " class="btn btn-dark">see more</a>
                                    <a href=" {{ url('update/'. $data['id']) }} " class="btn btn-warning"><i class="fa-regular fa-pen-to-square"></i></a>
                                    <a href=" {{ url('delete/'. $data['id']) }} " class="btn btn-danger"><li class="fa-solid fa-trash"></li></a>
                                </div>
                                <div class="col">
                                    <span> By/ <b class="fw-semibold"> {{ $data->writer }} </b></span>
                                    <div class="small text-secondary"> {{ $data['created_at']->format('j- F- o') }} </div>
                                    <div class="small text-secondary"> {{ $data['created_at']->format('h:i A') }} </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                @endforeach
                <div> {{ $result-> links() }} </div>
            </div>
        </div>
    </div>
@endsection
