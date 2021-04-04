<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class rest_api_model extends Model
{

    // protected $guarded = ['*'];     // colonne db, tutti i campi sono protetti dalla valorizzazione massiva
    // protected $guarded = [];        // colonne db, tutti i campi sono ammessi per la valorizzazione massiva 
    protected $fillable = ['name','message','telephone','email']; // singole colonne db ammesse per la valorizzazione massiva


    protected $table = 'rest_api_table';
    use HasFactory;
}
