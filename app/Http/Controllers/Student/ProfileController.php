<?php

namespace App\Http\Controllers\Student;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Jobs\StudentProfileFormFields;
use App\Http\Requests\StudentCreateRequest;
use App\Http\Requests\StudentUpdateRequest;
use App\Student; 
use Auth;

class ProfileController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return Response
     */
    public function create()
    {
        $data = $this->dispatch(new StudentProfileFormFields());
        return view('student.profile.create', $data);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  Request  $request
     * @return Response
     */
    public function store(StudentCreateRequest $request)
    {
        $newStudent = $request->except('_token');
        $newStudent['user_id']=Auth::user()->id;
        $student = Student::create($newStudent);

        return redirect()
            ->route('student.lesson.index')
            ->withSuccess('Таны мэдээлэл амжилттай шинэчлэгдлээ.');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function edit($id)
    {
        $data = $this->dispatch(new StudentProfileFormFields($id));

        return view('student.profile.edit', $data);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  Request  $request
     * @param  int  $id
     * @return Response
     */
    public function update(StudentUpdateRequest $request, $id)
    {
        $student = Student::findOrFail($id);
        $student->fill($request->except('_token'));
        $student->save();

        if ($request->action === 'continue') {
          return redirect()
              ->back()
              ->withSuccess('Амжилттай хадгаллаа.');
        }

        return redirect()
            ->route('student.lesson.index')
            ->withSuccess('Амжилттай засагдлаа.');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return Response
     */
    public function destroy($id)
    {
        //
    }
}
