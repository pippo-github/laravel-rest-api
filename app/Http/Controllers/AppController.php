<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Resources\rest_api_resource;
use App\Models\rest_api_model;


class AppController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {  

        $tabella = rest_api_model::paginate(11);

        return  rest_api_resource::collection($tabella)->additional(['meta' => [
            'back to home' => '/',
            'author' => 'giuseppe tarallo',
            'email' => 'tarallo.giuseppe@libero.it',
        ]]);;
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        
        $rules = [
            "name" =>        "required|string|min:3|max:22",
            "message" =>     "required|string|min:3|max:5000",
            "telephone" =>   "required|string",
            "email" =>       "required|email",
        ];
        
        $customMessage = [
            "required" => " the filed <span style='color: red'>:attribute</span> is required"
        ];
        
        $this->validate($request, $rules, $customMessage);
        rest_api_model::create($request->all());

        return redirect("/")->with("success", "record created with success");
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        // metodo vecchia maniera non BULK
        // inserimento non massivo, in questo
        // progetto sono state utilizzate 
        // entrambe le possibilita' .....

        $id_record = $request->input("id_update");
        $name = $request->input("name");
        $message = $request->input("message");
        $telephone = $request->input("telephone");
        $email = $request->input("email");

        $recordToUpdate = rest_api_model::findOrFail($id_record);

        $recordToUpdate->name = $name;
        $recordToUpdate->message = $message;
        $recordToUpdate->telephone = $telephone;
        $recordToUpdate->email = $email;

        $recordToUpdate->save();

        return redirect("/api/putRecordView")->with("success", "record updated with success");
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id, Request $request)
    {
        rest_api_model::destroy($request->input("id_update"));
        return redirect("/")->with("success", "record deleted with success")  ;
    }


    
    // NON FA PARTE DELLE FUNZIONI DI BUSINESS DEL CONTROLLER !!!

    // questa e' una funzione aggiunta da me non
    // facante parti di quelle di servizio, se
    // utilizzo il parametro $id, mi va in errore
    // prelevo questo dato dai valori inviati
    // tramite post
    public function RestApiByID(Request $request){

        $id_record = $request->input("id_update");
        $recordAPI = rest_api_model::findOrFail($id_record);

        // findOrFail non restitiusce una collection quindi
        // non si puo' utilizzare additional per aggiungere
        // dei meta all'output JOSN, comunque la return in
        // questo caso restituisce un mime: application/json
        return $recordAPI;
     }

}
