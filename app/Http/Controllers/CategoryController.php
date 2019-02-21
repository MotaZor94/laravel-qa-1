<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;

class CategoryController extends Controller
{
    //
    public function index()
    {
        // select all categories ordered by names
        $categories = DB::table('categories')->orderBy('name')->get();

        // prepare the view and put the categories inside as $categories
        $view = view('categories/index', [
            'categories' => $categories
        ]);

        // return the view (thus outputting it)
        return $view;
    }
}
