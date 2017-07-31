<html lang="{{ app()->getLocale() }}">
  <head>
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1">

      <title>Laravel</title>
  </head>

  <body>
    <ol>
    @foreach ($users as $user)
      <li><a href="{{ url('users/'.$user->id) }}">{{ $user->name }}</a></li>
    @endforeach
    </ol>
  </body>
</html>