@extends("layouts\layoutsCondiviso")
@section('titolo', "modify record page")

@section('contenuti')
    
<h1>
    Modify record to db
</h1>

<div class="jumbotron">

    <h3>
        Update page
    </h3>

    <p>
        Use the form below to <b>select an id</b> needed to edit a record  to db MySQL, for the REST:API
    </p>


@if($errors->any())
    @foreach ($errors->all() as $error)
        <p>
            {!! $error !!}
        </p> 
    @endforeach
@endif


{{-- {{ dd($all_records) }} --}}


<div id='outputBox' class="container">

    @foreach($all_records as $record)

        <div>
           <span>id:</span> {{ $record->id }}
        </div>
        
        <div>
           <span>name:</span> {{ $record->name }}
        </div>
    
        <div>
           <span>message:</span> {{ $record->message }}
        </div>
    
        <div>
           <span>telephone:</span> {{ $record->telephone }}
        </div>
    
        <div>
           <span>email:</span> {{ $record->email }}
        </div>

        <hr>

    @endforeach

</div>



</div>
{{-- 
    qui dopo il controller e la funzione @action viene passato '1' come parametro fittizio solo perche'
    col vettore di vettore, che ha la sintassi piu' flessibile e' mandatorio, ma poi utilizzo l'ID
    del select tag
--}}
{!! Form::open(["action"  => ["App\Http\Controllers\AppController@update", 1], "method" => "post", "class" => "form-group"]) !!}
@csrf

<select name='id_update' class="form-control mb-2">
    @foreach ($all_records as $record)
        <option value='{{ $record->id }}'>
                {{ $record->id }}
        </option>
    @endforeach
</select>

    {!! Form::text("name"," item value ", ["placeholder" => "user name", "class" => "form-control mb-2"]) !!}
    {!! Form::hidden("_method","put") !!}
    {!! Form::textArea("message","", ["placeholder" => "user message", "class" => "form-control mb-2"]) !!}
    {!! Form::text("telephone","", ["placeholder" => "user telephone", "class" => "form-control mb-2"]) !!}
    {!! Form::text("email","", ["placeholder" => "user email", "class" => "form-control mb-2"]) !!}

    {!! Form::submit("update record to MySQL db for rest api",[ "class" => "form-control btn btn-primary mb-1"]) !!}
    <a href=".." class="btn btn-success form-control mb-1"> back to home</a>

{!! Form::close() !!}


@endsection


<style>

    #outputBox{
        max-height: 150px;
        overflow: auto;
    }
    
    .container > div > span{
        font-weight: bold;
    }
    
    </style>