<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <title>{{ config('lms.title') }}</title>

  <link href="/assets/css/teacher.css" rel="stylesheet">
  @yield('styles')

  <!--[if lt IE 9]>
    <script src="//oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="//oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
</head>
<body>

<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed"
              data-toggle="collapse" data-target="#navbar-menu">
        <span class="sr-only">Toggle Navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">{{ config('lms.title') }}</a>
    </div>
    <div class="collapse navbar-collapse" id="navbar-menu">
      @include('teacher.partials.navbar')
    </div>
  </div>
</nav>

@yield('content')

<footer class="footer">
  <div class="container">
    <p class="text-muted">Ш.Отгонбилэгийн нэрэмжит Технологийн сургууль © <span class="copyDate">2015</span> | Хөгжүүлсэн А.Түвшинжаргал.</p>
  </div>
</footer>

<script src="/assets/js/teacher.js"></script>

@yield('scripts')

</body>
</html>