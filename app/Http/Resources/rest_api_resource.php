<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class rest_api_resource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        // return parent::toArray($request);

        // per personalizzare i campi
        // e' necessario che la funzione
        // del controller in questo caso 'index'
        // restituisca una collection:
        // return  rest_api_resource::collection($tabella);

        return [
            'name' => $this->name,
            'message' => $this->message,
            'email' => $this->email,
            'telephone' => $this->telephone,
        ];

    }


    // public function with($request)
    // {
    //     return [
    //         'meta' => [
    //             'key' => 'value',
    //         ],
    //     ];
    // }

}
