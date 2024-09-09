@extends('layout.master')

@section('content')
    <div class="container">
        <div class="row">
            <a href=" {{ route('listPage') }} " class=" text-end mb-3"><button class="btn btn-dark">Back</button></a>
            <div class="col-6">
                <img src="{{ asset("blogImages/".$data-> image) }}" class="img-thumbnail img-fluid" alt="">
            </div>
            <div class="col-6">

                <h3> {{ $data-> title }} </h3>
                <p class="text-muted"> {{ $data-> description }} </p>
                <h6> <small class="">By/ </small> {{ $data-> writer }} </h6>
                <div class="small text-secondary"> {{ $data['created_at']->format('j- F- o') }} </div>
                <div class="small text-secondary"> {{ $data['created_at']->format('h:i A') }} </div>
            </div>
        </div>
    </div>
@endsection
