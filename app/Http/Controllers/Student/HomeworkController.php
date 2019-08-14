<?php

namespace App\Http\Controllers\Student;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Http\Requests\HomeworkCreateRequest;
use App\Http\Requests\HomeworkUpdateRequest;
use Auth;
use App\Homework;
use App\Lesson;
use App\Content;

class HomeworkController extends Controller
{
    public function store (HomeworkCreateRequest $request, $lesson, $content){
    	
    	$newHomework = $request->except('_token');
        $newHomework['content_id']=$content;
        $newHomework['student_id']=Auth::user()->student->id;
        
        $lesson = Lesson::findOrFail($lesson);
        $content = Content::findOrFail($content);
        
        $fileName = mb_substr(Auth::user()->student->firstname,0,1,'UTF8').'_'.Auth::user()->student->lastname . '.' . $request->file('file')->getClientOriginalExtension();
        $filePath = rtrim(base_path() . '/public/uploads/'. $lesson->teacher->user_id . '/' . $lesson->name .'/'. $content->name); 
				
				$request->file('file')->move($filePath, $fileName);
				
				$newHomework['file'] =  $lesson->teacher->user_id . '/' . $lesson->name .'/'. $content->name . '/' . $fileName;
				
				$homework = Homework::create($newHomework);
		
        return redirect()
            ->route('student.lesson.show',[$lesson, $content])
            ->withSuccess('Амжилттай илгээлээ.');
    } 
}
