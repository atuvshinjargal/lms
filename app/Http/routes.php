<?php
get('/', function () {
  return redirect('student/lessons');
});
/*  
admin route
*/
$router->group([
  'namespace' => 'Admin',
  'middleware' => ['auth', 'roles'],
  'roles' => ['admin']
], function () {
  resource('admin/user', 'UserController', ['except' => ['show']]);
  get('admin', function () {
    return redirect('admin/user');
  });
});
/*  
manager route
*/
$router->group([
  'namespace' => 'Manager',
  'middleware' => ['auth', 'roles', 'email'],
  'roles' => ['manager']
], function () {
  //get('manager', 'LessonController@show');
});

/*  
Teacher route
*/
$router->group([
  'namespace' => 'Teacher',
  'middleware' => ['auth', 'roles', 'email'],
  'roles' => ['teacher']
], function () {
  resource('teacher/profile', 'ProfileController', ['except' => ['index', 'show', 'destroy']]);
  resource('teacher/lesson', 'LessonController', ['except' => ['show']]);
  resource('teacher/{lesson}/category', 'CategoryController', ['except' => ['show']]);
  resource('teacher/{category}/content', 'ContentController', ['except' => ['show']]);
  get('teacher/lesson/{lesson}/grade/{confirmed}',['as' => 'teacher.lesson.grade', 'uses' => 'LessonController@grade']);
  get('teacher/lesson/grade/{grade}/confirm',['as' => 'teacher.lesson.grade.confirm', 'uses' => 'LessonController@gradeConfirm']);
  get('teacher/lesson/grade/{grade}/close',['as' => 'teacher.lesson.grade.close', 'uses' => 'LessonController@gradeClose']);
  get('teacher/upload', 'UploadController@index');
  post('teacher/upload/file', 'UploadController@uploadFile');
  delete('teacher/upload/file', 'UploadController@deleteFile');
  post('teacher/upload/folder', 'UploadController@createFolder');
  delete('teacher/upload/folder', 'UploadController@deleteFolder');
  get('teacher', function () {
    return redirect('teacher/lesson');
  });
});

/*  
Student route
*/
$router->group([
  'namespace' => 'Student',
  'middleware' => ['auth', 'roles', 'email'],
  'roles' => ['student']
], function () {
  get('student/lessons', ['as' => 'student.lesson.index', 'uses' => 'LessonController@index']);
  get('student/lesson/{lesson}/show/{content}',['as' => 'student.lesson.show', 'middleware' => 'checkLesson', 'uses' => 'LessonController@show']);
  get('student/lesson/choose/{lesson}',['as' => 'student.lesson.choose', 'uses' => 'LessonController@choose']);
  get('student/lesson/unchoose/{grade}',['as' => 'student.lesson.unchoose', 'uses' => 'LessonController@unchoose']);
  post('student/homework/{lesson}/{content}', ['as' => 'student.homework.store', 'uses' => 'HomeworkController@store']);
  post('student/question/{lesson}/{content}', ['as' => 'student.question.store', 'uses' => 'QuestionController@store']);
  resource('student/profile', 'ProfileController', ['except' => ['index', 'show', 'destroy']]);
  get('student', function () {
    return redirect('student/lessons');
  });
});


// Logging in and out
get('auth/login', ['as' => 'auth.login', 'uses' => 'Auth\AuthController@getLogin']);
post('auth/login', 'Auth\AuthController@postLogin');
get('auth/logout', 'Auth\AuthController@getLogout');
get('auth/register', 'Auth\AuthController@getRegister');
post('auth/register', 'Auth\AuthController@postRegister');
get('auth/confirm/{confirmationCode}', 'Auth\AuthController@confirm');
get('auth/activate', ['as' => 'auth.activate', 'uses' => 'Auth\AuthController@activate']);


