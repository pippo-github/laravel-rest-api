@extends("layouts\layoutsCondiviso")
@section('titolo', "add record page")

@section('contenuti')
    
<h1>
    Add record to db
</h1>

<div class="jumbotron">

    <h3>
        Insert page
    </h3>

    <p>
        Use the form below to add a record to db MySQL, for the REST:API
    </p>


@if($errors->any())
    @foreach ($errors->all() as $error)
        <p>
            {!! $error !!}
        </p> 
    @endforeach
@endif



</div>

{!! Form::open(["action"  => ["App\Http\Controllers\AppController@store"], "method" => "post", "class" => "form-group"]) !!}

{!! Form::text("name"," item value ", ["placeholder" => "user name", "class" => "form-control mb-2"]) !!}
{!! Form::textArea("message","", ["placeholder" => "user message", "class" => "form-control mb-2"]) !!}
{!! Form::text("telephone","", ["placeholder" => "user telephone", "class" => "form-control mb-2"]) !!}
{!! Form::text("email","", ["placeholder" => "user email", "class" => "form-control mb-2"]) !!}

{!! Form::submit("add record to MySQL db for rest api",[ "class" => "form-control btn btn-primary mb-1"]) !!}
<a href=".." class="btn btn-success form-control mb-1"> back to home</a>

{!! Form::close() !!}


@endsection