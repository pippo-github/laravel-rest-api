@extends('layouts.layoutsCondiviso')
@section('titolo', "titolo della pagina")  

@section('contenuti')


<h1 class="text-danger m-4">
    JSON Rest API, application 
</h1>

<div class="jumbotron mt-4" >

    <h2 class="text-primary font-italic text-capitalize mb-5">
        Application description
    </h2>

    <p class="text-grey">
        The application allows you to use data from a MySQL database and to provide the consumer in JSON:API format through the JSONResource class made available by the Laravel framework.    </p>

    <p class="text-grey mb-4">
        To see how the main class of this project works, you can use the links below to the official Laravel project guide.    
    </p>

    <a href="https://laravel.com/docs/8.x/eloquent-resources" target="_blank" class="w-100 mb-2 btn btn-primary" style="color: black"> JSONResurce, official documentation </a>
    <a href="https://laravel.com/" target="_blank" class="w-100 text-black mb-2 btn bg-info"> Laravel, official documentation </a>
    <a href="https://jsonapi.org/" target="_blank" class="w-100 text-black btn my-btn" style="background: #a0c9eb"> JSON:API, official documentation </a>

</div>

<div class="h2 font-italic m-4">
    Select a option:
</div>

    <a id='my-btn1'href="/api" class="my-btn btn btn-danger w-100 mb-2"> show rest api </a>
    <a id='my-btn2'href="/api/addRecordView" class="my-btn btn btn-warning w-100 mb-2"> add record to MySQL db </a>
    <a id='my-btn3'href="/api/putRecordView" class="my-btn btn btn-secondary w-100 mb-2"> modify record into MySQL db </a>
    <a id='my-btn4'href="/api/deleteRecordView" class="my-btn btn btn-primary w-100 mb-2"> delete record into MySQL db </a>
    <a id='my-btn5'href="/api/showRestApiByID" class="my-btn btn btn-primary w-100 mb-2"> show rest api by ID </a>

</div>

@endsection


<style>
    .my-btn:hover{
        background: rgb(120, 145, 226)!important;
        color: black;
    }

    #my-btn1{
        background-color: rgba(172, 29, 29, 0.8);
        color: black;
    }
    #my-btn2{
        background-color: rgba(0, 128, 0, .6);
        color: black;
    }
    #my-btn3{
        background-color: rgba(91, 212, 91, 0.9);
        color: black;
    }
    #my-btn4{
        background-color: rgba(106, 231, 106, 0.8);
        color: black;
    }
    #my-btn5{
        background-color: rgba(132, 233, 132, 0.8);
        color: black;
    }
</style>