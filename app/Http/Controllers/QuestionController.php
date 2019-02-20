<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;

class QuestionController extends Controller
{
    //
    public function index()
    {
        // SELECT * FROM `questions` ORDER BY `created_at` DESC
        $all_questions = DB::table('questions')->orderBy('created_at', 'desc')->get();
        // $all_questions = DB::table('questions')->latest()->get();
        dd($all_questions);

        return 'This is the list of questions';
    }

    public function show()
    {
        // select one record from questions with id 1
        // SELECT * FROM `questions` WHERE `id` = 1 LIMIT 1
        $question = DB::table('questions')->where('id', 1)->first();

        // SELECT * FROM `answers` WHERE `question_id` = 1
        $answers_to_q_1 = DB::table('answers')->where('question_id', 1)->oldest()->get();

        dd($answers_to_q_1);

        return 'This is a detail of a question';
    }
}
