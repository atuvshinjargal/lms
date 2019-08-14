<?php

namespace App\Http\Controllers\Teacher;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Jobs\ProfileFormFields;
use App\Http\Requests\TeacherCreateRequest;
use App\Http\Requests\TeacherUpdateRequest;
use App\Teacher;
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
        $data = $this->dispatch(new ProfileFormFields());
        return view('teacher.profile.create', $data);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  Request  $request
     * @return Response
     */
    public function store(TeacherCreateRequest $request)
    {
        $newTeacher = $request->except('_token');
        $newTeacher['user_id']=Auth::user()->id;
        $teacher = Teacher::create($newTeacher);

        return redirect()
            ->route('teacher.lesson.index')
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
        $data = $this->dispatch(new ProfileFormFields($id));

        return view('teacher.profile.edit', $data);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  Request  $request
     * @param  int  $id
     * @return Response
     */
    public function update(TeacherUpdateRequest $request, $id)
    {
        $teacher = Teacher::findOrFail($id);
        $teacher->fill($request->except('_token'));
        $teacher->save();

        if ($request->action === 'continue') {
          return redirect()
              ->back()
              ->withSuccess('Амжилттай хадгаллаа.');
        }

        return redirect()
            ->route('teacher.lesson.index')
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
