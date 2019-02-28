<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Answer extends Model
{
    protected $fillable = ['text'];
    //
    public function question()
    {
        return $this->belongsTo('\App\Question');
    }

    public function votes()
    {
        return $this->hasMany('\App\Vote');
    }

    public function user()
    {
        return $this->belongsTo('App\User');
    }
}
