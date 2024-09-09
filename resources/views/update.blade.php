@extends('layout.master')

@section('content')
    <div class="container">
        <div class="text-center"><a href=" {{ route('listPage') }} "><button class="btn btn-dark">Back</button></a></div>
        <form id="contactForm" action="{{ route('update') }}"  data-sb-form-api-token="API_TOKEN" method="POST" enctype="multipart/form-data" class="mt-3">
            @csrf
        <div class="row">

            <div class="col-4">
                <img id="output" src="{{ asset("blogImages/".$data->image) }}" alt="" class="img-fluid img-thumbnail @error('image') is-invalid @enderror" >
                <input type="file" class="form-control" onchange="loadfile(event)" name="image">
                @error('image')
                    <div class="invalid-feedback" >{{ $message }}</div>
                @enderror
            </div>
            <div class="col-4">

                    <div class="mt-3">
                        <input type="hidden" value="{{ $data->id }}" name="id">
                        <input type="hidden" value="{{ $data->image }}" name="oldImage">
                        <input type="text" value="{{ old('title', $data->title) }}" class="form-control @error('title') is-invalid @enderror" placeholder="Enter blog title" name="title">
                        @error('title')
                            <div class="invalid-feedback" >{{ $message }}</div>
                        @enderror
                    </div>
                    <div class=" mt-3 @error('description') is-invalid @enderror">
                        <textarea class="form-control" name="description" id="" cols="30" rows="10" placeholder="Enter some description">{{ old('description', $data->description) }}</textarea>
                    </div>
                    @error('description')
                            <div class="invalid-feedback">{{ $message }}</div>
                        @enderror
                    <div class="mt-3">
                        <input type="text" value="{{ old('writer', $data->writer) }}" class="form-control  @error('writer') is-invalid @enderror" placeholder="Enter blog blog writer" name="writer">
                        @error('writer')
                            <div class="invalid-feedback">{{ $message }}</div>
                        @enderror
                    </div>
                    <div class="mt-3 col-md-4 col-lg-12">
                        <input type="submit" class=" form-control bg-dark text-white" value="Update">
                    </div>
            </div>
        </div>
    </form>
    </div>
@endsection
