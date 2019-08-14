<?php

namespace App\Http\Controllers\Teacher;

use Illuminate\Http\Request;
use App\Jobs\LessonFormFields;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Lesson;
use App\Grade;
use Auth;
use App\Teacher;
use App\Http\Requests\LessonCreateRequest;
use App\Http\Requests\LessonUpdateRequest;
use Illuminate\Support\Facades\Storage;

class LessonController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return Response
     */
    public function index()
    {
        $teacher = new Teacher();
        if ($teacher->getTeacherByUser(Auth::user())){
            $teacher = $teacher->getTeacherByUser(Auth::user());
        }else{
            return redirect()
            ->route('teacher.profile.create');
        }
        $lessons = new Lesson();
        $lessons = $lessons->getLessonsByTeacher($teacher);

        return view('teacher.lesson.index')
            ->withLessons($lessons);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return Response
     */
    public function create()
    {
        $data = $this->dispatch(new LessonFormFields());
        $files = Storage::files(Auth::user()->id);
        return view('teacher.lesson.create', $data)
                ->withFiles($files);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  Request  $request
     * @return Response
     */
    public function store(LessonCreateRequest $request)
    {
        $newLesson = $request->except('_token');
        $teacher = new Teacher();
        $teacher = $teacher->getTeacherByUser(Auth::user());
        $newLesson['teacher_id']=$teacher->id;
        $lesson = Lesson::create($newLesson);

        return redirect()
            ->route('teacher.lesson.index')
            ->withSuccess('Шинэ хичээл амжилттай нэмэгдлээ.');
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
        $data = $this->dispatch(new LessonFormFields($id));
        $files = Storage::files(Auth::user()->id);
        return view('teacher.lesson.edit', $data)
                ->withFiles($files);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  Request  $request
     * @param  int  $id
     * @return Response
     */
    public function update(LessonUpdateRequest $request, $id)
    {
        $lesson = Lesson::findOrFail($id);
        $lesson->fill($request->except('_token'));
        $lesson->save();

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
        $lesson = Lesson::findOrFail($id);
        $lesson->delete();

        return redirect()
            ->route('teacher.lesson.index')
            ->withSuccess('Амжилттай устгалаа.');
    }
    public function grade($id, $confirmed)
    {
        $lesson = Lesson::find($id);
        $grades = Grade::where(['lesson_id' => $id, 'confirmed' => $confirmed])->get();

        return view('teacher.lesson.grade')
                ->withGrades($grades)
                ->withLesson($lesson)
                ->withConfirmed($confirmed);
    }
    public function gradeConfirm($grade_id)
    {
        $grade = Grade::findOrFail($grade_id);
        $grade->confirmed = 1;
        $grade->save();

        return redirect()
                ->route('teacher.lesson.grade',[$grade->lesson_id, 0])
                ->withSuccess('Амжилттай зөвшөөрлөө.');
    }
    public function gradeClose($grade_id)
    {
        $grade = Grade::findOrFail($grade_id);
        $grade->confirmed = 0;
        $grade->save();

        return redirect()
                ->route('teacher.lesson.grade',[$grade->lesson_id, 1])
                ->withSuccess('Амжилттай цуцаллаа.');
    }
}
