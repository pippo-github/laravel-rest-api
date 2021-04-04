<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="{{ asset('css/app.css')}}">
    <title> {{env("APP_NAME")}} -- @yield("titolo") </title>

    <style>
        *{
            box-sizing: border-box;
        }
        #footer{
            text-align: center;
            position: relative;
            width: 100%;
            bottom: 0%;
            margin: 0 auto;
            box-sizing: border-box;
            background-color: rgb(71, 82, 179);
            color: white;
            font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
            padding: 7px;
            font-weight: 400;
            font-style: italic;
        }

        .my-alert{
            color: white;
            padding: 7px;
            font-size: 1.2em;
           display: none; 
        }
        
    </style>

</head>
<body>

<script src="https://www.unpkg.com/jquery"></script>

<script>

    $( () =>{
        $('.my-alert').click( () =>{
            $('.my-alert').remove();
    } )


    })
</script>

    <div class="my-alert" title='click to close the session message'>
        @include('sessionMessage.sessionMessage')
    </div>

    {{-- <div>
        @include('sessionMessage.sessionMessage')

    </div> --}}

    <div class='container border border-solid' style="min-height: 100vh" >

        @yield('contenuti')


    
    </div>

    <div id='footer' class="container mt-5">
        REST API, application -- giuseppe tarallo; 2000 - 2021, UK - London
    </div>
</body>
</html>


