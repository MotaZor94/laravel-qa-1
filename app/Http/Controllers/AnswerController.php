<?php

namespace App\Http\Controllers;

use Auth;
use Illuminate\Http\Request;
use App\Answer;

class AnswerController extends Controller
{
    //
    public function show($id)
    {
        $answer = Answer::findOrFail($id);

        return view('answers/show', compact('answer'));
    }

    /**
     * handle the submission of the voting form
     */
    public function vote()
    {
        $request = request();                   // gets the request object
 
        $answer = Answer::find(1);              // find answer with id 1 in DB
        
        $vote = new \App\Vote;                  // make a new \App\Vote object
        $vote->answer_id = $answer->id;         // assign value of id of Answer to the Vote
        
        if ($request->input('up')) {            // if there is 'up' in $_GET or $_POST
            $vote->vote = 1;                        // the value of property of the vote will be 1
            $answer->rating++;                      // the accumulated rating in answer will be raised by 1
        } elseif($request->input('down')) {     // if the request ($_GET or $_POST) contains 'down'
            $vote->vote = -1;                       // the value of property vote of the vote will be -1
            $answer->rating--;                      // decrements the accumulated rating in the answer
        }
        
        $vote->save();                          // inserts the vote into the database
        $answer->save();                        // updates the answer in the database
        
        return back();                          // redirects back to the previous page
    }

    public function store(Request $request, $question_id)
    {
        $request = request();

        // 1.
        $answer = new Answer;
        
        // 2.
        $answer->text = $request->input('text');
        // $answer->fill($request->only(['text']));
        
        // 3.
        $answer->question_id = $question_id;
        
        // 4.
        $answer->user_id = \Auth::id();
        
        // 5.
        $answer->save();

        // 6. (any of the following works)
        return redirect()->route('question.show', [$question_id]);

        return redirect()->action('QuestionController@show', [$question_id]);
        
        return redirect()->url('/questions/'.$question_id);

        return redirect('/questions/'.$question_id);
    }
}
