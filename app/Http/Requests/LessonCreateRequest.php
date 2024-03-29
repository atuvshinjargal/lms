<?php

namespace App\Http\Requests;

use App\Http\Requests\Request;

class LessonCreateRequest extends Request
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
          'code' => 'required',
          'name' => 'required',
          'description' => 'required',
          'image' => 'required',
          'start_date' => 'required',
          'stop_date' => 'required',
          'duration_time' => 'required',
        ];
    }
}
