@extends('questions/layout')


@section('content')

{!! Form::open(['route' => 'question.store', 'method' => 'post']) !!}

    <label for="">Title:</label><br>
    {!! Form::text('title', $question->title) !!}


{!! Form::close() !!}


@endsection