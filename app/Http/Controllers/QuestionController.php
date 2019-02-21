<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use App\Answer;
use App\Question;

class QuestionController extends Controller
{
    //
    public function index()
    {
        // SELECT * FROM `questions` ORDER BY `created_at` DESC
        $all_questions = Question::orderBy('created_at', 'desc')->get();
        // $all_questions = DB::table('questions')->latest()->get();
        
        $view = view('questions/index');

        return $view;
    }

    public function show()
    {
        // select one record from questions with id 1
        // SELECT * FROM `questions` WHERE `id` = 1 LIMIT 1
        // $question = DB::table('questions')->where('id', 1)->first();
        //          Question::where('id', 1)->first();
        $question = Question::find(1);

        
        $answers_to_q_1 = Answer::where('question_id', 1)->oldest()->get();

        // SELECT * FROM `answers` WHERE `question_id` = 1
        $answers_to_q_1 = $question->answers;
        
        // SELECT * FROM `answers` WHERE `question_id` = 1 ORDER BY `created_at` DESC
        $answers_to_q_1 = $question->answers()->oldest()->get();

        $view = view('questions/index');

        return $view;
    }
}
