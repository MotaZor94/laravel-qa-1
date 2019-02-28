@extends('questions/layout')

@section('content')

@include('common/alerts')

<section id="banner" class="banner-sm">
    <div class="container">
        <h1>Questions</h1>
    </div>
</section>

<section id="question">
    <div class="container">
        <div class="question-left">
            <div class="user-avatar">
                <img class="img-fluid"
                     src="http://icons.iconarchive.com/icons/paomedia/small-n-flat/1024/user-male-icon.png"/>
            </div>
            <div class="user-name">John Doe</div>
            <div class="user-stats">
                <div class="user-stat">
                    <span>3</span>
                    <label>responses</label>
                </div>
                <div class="user-stat">
                    <span>5</span>
                    <label>votes</label>
                </div>
            </div>

        </div>
        <div class="question-right">
            <h2>{{ $question->title }}</h2>
            {{ $question->text }}
        </div>
    </div>
</section>

<section id="answers">

    <div class="container">
        <h2>{{ $question->answers->count() }} Answers</h2>

        @auth
            {!! Form::open(['route' => ['answer.store', $question->id], 'method' => 'post']) !!}
    
                <div class="form-group">
                    <label for="">Your answer:</label><br>
                    {!! Form::textarea('text', $answer->text, ['class' => 'form-control']) !!}
                </div>
            
                <div class="form-group">
                    {!! Form::submit('Save', ['class' => 'btn btn-primary']) !!}
                </div>
            
            {!! Form::close() !!}
        @else
            You have to <a href="{{ route('login') }}">log in</a> to submit answers.
        @endauth

        @foreach ($question->answers as $answer)
            <div class="answer">
                <div class="answer-left">
                    <div class="user-avatar">
                        <img class="img-fluid"
                            src="http://icons.iconarchive.com/icons/paomedia/small-n-flat/1024/user-male-icon.png"/>
                    </div>
                    <div class="user-name">{{ $answer->user ? $answer->user->name : 'John Doe' }}</div>
                    <div class="user-stats">
                        <div class="user-stat">
                            <span>3</span>
                            <label>responses</label>
                        </div>
                        <div class="user-stat">
                            <span>5</span>
                            <label>votes</label>
                        </div>
                    </div>

                    @can('admin')
                        <button>DELETE</button>
                    @endcan
                </div>
                <div class="answer-right">
                    {{ $answer->text }}
                </div>
            </div>
        @endforeach

    </div>

</section>

@endsection