<?php

namespace App\Http\Controllers\Student;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Http\Requests\QuestionCreateRequest;
use Auth;
use App\Question;

class QuestionController extends Controller
{
     /**
     * Store a newly created resource in storage.
     *
     * @param  Request  $request
     * @return Response
     */
    public function store(QuestionCreateRequest $request, $lesson_id, $content)
    {
        $newQuestion = $request->except('_token');
        $newQuestion['lesson_id']=$lesson_id;
        $newQuestion['user_id']=Auth::user()->id;
        $student = Question::create($newQuestion);

        return redirect()
            ->route('student.lesson.show',[$lesson_id,$content]);
    }
}
