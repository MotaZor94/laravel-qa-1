@extends('questions/layout')


@section('content')

@include('common/errors')

{!! Form::open(['route' => 'question.store', 'method' => 'post']) !!}

    <label for="">Title:</label><br>
    {!! Form::text('title', $question->title) !!}
    <br>

    <label for="">Text:</label><br>
    {!! Form::textarea('text', $question->text) !!}
    <br>

    {!! Form::submit('Save') !!}


{!! Form::close() !!}


@endsection