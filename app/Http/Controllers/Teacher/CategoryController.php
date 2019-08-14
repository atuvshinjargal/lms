<?php

namespace App\Http\Controllers\Teacher;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Category;
use App\Lesson;
use App\Jobs\CategoryFormFields;
use App\Http\Requests\CategoryCreateRequest;
use App\Http\Requests\CategoryUpdateRequest;

class CategoryController extends Controller
{
     /**
     * Display a listing of the resource.
     *
     * @return Response
     */
    public function index($lesson_id)
    {
        $category = new Category();
        $categories = $category->getCategoriesByLessonId($lesson_id);
        $lesson = Lesson::find($lesson_id);
        return view('teacher.category.index')
            ->withCategories($categories)
            ->withLesson($lesson);
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return Response
     */
    public function create($lesson_id)
    {
        $data = $this->dispatch(new CategoryFormFields());
        $lesson = Lesson::find($lesson_id);
        return view('teacher.category.create', $data)
        		->withLesson($lesson);
    }
     /**
     * Store a newly created resource in storage.
     *
     * @param  Request  $request
     * @return Response
     */
    public function store(CategoryCreateRequest $request,$lesson_id)
    {
        $newCategory = $request->except('_token');
        $category = new Category();
        $newCategory['lesson_id']=$lesson_id;
        $category = Category::create($newCategory);

        return redirect()
            ->route('teacher.{lesson}.category.index', $lesson_id)
            ->withSuccess('Шинэ задаргаа амжилттай нэмэгдлээ.');
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
    public function edit($lesson_id, $id)
    {
        $data = $this->dispatch(new CategoryFormFields($id));
        $lesson = Lesson::find($lesson_id);
        return view('teacher.category.edit', $data)
        		->withLesson($lesson);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  Request  $request
     * @param  int  $id
     * @return Response
     */
    public function update(CategoryUpdateRequest $request, $lesson_id, $id)
    {
        $category = Category::findOrFail($id);
        $category->fill($request->except('_token'));
        $category->save();

        if ($request->action === 'continue') {
          return redirect()
              ->back()
              ->withSuccess('Амжилттай хадгаллаа.');
        }

        return redirect()
            ->route('teacher.{lesson}.category.index',$lesson_id)
            ->withSuccess('Амжилттай засагдлаа.');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return Response
     */
    public function destroy($lesson_id, $id)
    {
        $category = Category::findOrFail($id);
        $category->delete();

        return redirect()
            ->route('teacher.{lesson}.category.index', $lesson_id)
            ->withSuccess('Амжилттай устгалаа.');
    }
}
