@extends('teacher.layout')

@section('content')
  <div class="container-fluid">
    <div class="row page-title-row">
      <div class="col-md-6">
        <h3>Хичээлүүд <small>» сонгох боломжтой хичээлүүд </small></h3>
      </div>
    </div>

        @include('teacher.partials.errors')
        @include('teacher.partials.success')
    <div class="row">
            @foreach ($lessons as $lesson)
  
              <div class="thumbnail">
                <img src="{{url('uploads/'.$lesson->image)}}" alt="{{$lesson->name}}">
                <div class="caption">
                  <h3>{{$lesson->name}}</h3>
                  <a href="#" type="button" data-toggle="modal" data-target="#teacher{{$lesson->teacher->id}}">
                    <h4>{{mb_substr($lesson->teacher->firstname, 0, 1, 'utf-8').'.'.$lesson->teacher->lastname}}</h4>
                  </a>
                 {{$lesson->description}}
                  <div class="text-center">
                  <?php $checkGrade = 0 ?>
                    @foreach ($lesson->grades as $grade)
                      @if ($student->id == $grade->student_id)
                        @if ($grade->confirmed)
                          <a href="{{route('student.lesson.show',[$lesson->id,'a'])}}" class="btn btn-success" role="button">Судлах</a>
                        @else
                          <a href="{{route('student.lesson.unchoose',$grade->id)}}" class="btn btn-warning" role="button">Сонгосон</a>
                        @endif
                        <?php $checkGrade++ ?>
                      @endif
                    @endforeach
                    @if ($checkGrade == 0)
                      <a href="{{route('student.lesson.choose',$lesson->id)}}" class="btn btn-primary" role="button">Сонгох</a>
                    @endif
                  </div>
                </div>
              </div>
              
              <div class="modal fade" id="teacher{{$lesson->teacher->id}}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                <div class="modal-dialog" role="document">
                  <div class="modal-content">
                    <div class="modal-header">
                      <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                      <h4 class="modal-title" id="myModalLabel">{{$lesson->teacher->firstname}} овогтой {{$lesson->teacher->lastname}}</h4>
                    </div>
                    <div class="modal-body">
                      <div class="panel panel-default">
                        <div class="panel-heading">
                          <h3 class="panel-title">Албан тушаал</h3>
                        </div>
                        <div class="panel-body">
                          {{$lesson->teacher->work}}
                        </div>
                      </div>
                      <div class="panel panel-default">
                        <div class="panel-heading">
                          <h3 class="panel-title">Төгссөн сургууль</h3>
                        </div>
                        <div class="panel-body">
                          {{$lesson->teacher->graduate}}
                        </div>
                      </div>
                      <div class="panel panel-default">
                        <div class="panel-heading">
                          <h3 class="panel-title">Эрдмийн зэрэг</h3>
                        </div>
                        <div class="panel-body">
                          {{$lesson->teacher->degree}}
                        </div>
                      </div>
                      <div class="panel panel-default">
                        <div class="panel-heading">
                          <h3 class="panel-title">Судалгааний чиглэл</h3>
                        </div>
                        <div class="panel-body">
                          {{$lesson->teacher->direction}}
                        </div>
                      </div>
                      <div class="panel panel-default">
                        <div class="panel-heading">
                          <h3 class="panel-title">Сургалтын үйл ажиллагаа</h3>
                        </div>
                        <div class="panel-body">
                          {{$lesson->teacher->schooling}}
                        </div>
                      </div>
                    </div>
                    <div class="modal-footer">
                      <button type="button" class="btn btn-default" data-dismiss="modal">Хаах</button>
                    </div>
                  </div>
                </div>
              </div>
            @endforeach
            </div>
            <div class="text-center"> 
              {!! $lessons->render() !!}
            </div>
  </div>
@stop