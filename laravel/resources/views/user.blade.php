<html lang="{{ app()->getLocale() }}">
  <head>
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1">

      <title>Laravel</title>
  </head>

  <body>
    <ol>
      <li>{{ $user->name }}</li>
      <li>{{ $user->email }}</li>
    </ol>
  </body>
</html>