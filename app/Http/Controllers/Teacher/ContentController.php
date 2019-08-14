<?php

namespace App\Http\Controllers\Teacher;

use Auth;
use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Content;
use App\Category;
use App\Lesson;
use App\Jobs\ContentFormFields;
use App\Http\Requests\ContentCreateRequest;
use App\Http\Requests\ContentUpdateRequest;
use Illuminate\Support\Facades\Storage;
use Log;

class ContentController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return Response
     */
    public function index($category_id)
    {
        $content = new Content();
        $contents = $content->getContentsByCategoryId($category_id);
        $category = Category::find($category_id);
        $lesson = Lesson::find($category->lesson_id);
        return view('teacher.content.index')
            ->withContents($contents)
            ->withCategory($category)
            ->withLesson($lesson);
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return Response
     */
    public function create($category_id)
    {
        $data = $this->dispatch(new ContentFormFields());
        $category = Category::find($category_id);
        $lesson = Lesson::find($category->lesson_id);
        $files = Storage::files(Auth::user()->id);
        return view('teacher.content.create', $data)
                ->withCategory($category)
                ->withLesson($lesson)
                ->withFiles($files);
    }
     /**
     * Store a newly created resource in storage.
     *
     * @param  Request  $request
     * @return Response
     */
    public function store(ContentCreateRequest $request, $category_id)
    {
        $newContent = $request->except(array('_token','checkVideo'));
        $content = new Content();
        $newContent['category_id']=$category_id;
        if (!$request->input('checkVideo') == 'on'){
            $newContent['video'] = null;
        }
        $content = Content::create($newContent);

       return redirect()
            ->route('teacher.{category}.content.index', $category_id)
            ->withSuccess('Шинэ агуулга амжилттай нэмэгдлээ.');
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
    public function edit($category_id, $id)
    {
        $data = $this->dispatch(new ContentFormFields($id));
        $category = Category::find($category_id);
        $files = Storage::files(Auth::user()->id);
        $lesson = Lesson::find($category->lesson_id);
        return view('teacher.content.edit', $data)
                ->withCategory($category)
                ->withLesson($lesson)
                ->withFiles($files);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  Request  $request
     * @param  int  $id
     * @return Response
     */
    public function update(ContentUpdateRequest $request, $category_id, $id)
    {
        $content = Content::findOrFail($id);
        $content->fill($request->except(array('_token','checkVideo')));
        if (!$request->input('checkVideo') == 'on'){
            $content->video = null;
        }
        $content->save();

        if ($request->action === 'continue') {
          return redirect()
              ->back()
              ->withSuccess('Амжилттай хадгаллаа.');
        }

        return redirect()
            ->route('teacher.{category}.content.index',$category_id)
            ->withSuccess('Амжилттай засагдлаа.');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return Response
     */
    public function destroy($category_id, $id)
    {
        $content = Content::findOrFail($id);
        $content->delete();

        return redirect()
            ->route('teacher.{category}.content.index', $category_id)
            ->withSuccess('Амжилттай устгалаа.');
    }
}
