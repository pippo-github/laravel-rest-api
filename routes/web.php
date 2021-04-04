<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

/* 
richiede i paccehtti:

$ composer require laravel/ui
$ php artisan ui bootstrap
$ npm install
$ npm run dev

$ php artisan make:resource nome_resource


*/

Route::get('/', function () {
    return view('viewPage\indexPageView');
});

Route::get('/api/addRecordView', function () {
    return view('viewPage\addRecordView');
});

Route::get('/api/putRecordView', function () {

    $all_records = DB::select("select * from rest_api_table order by id asc");
    return view('viewPage\putRecordView')->with("all_records", $all_records);
    
});

Route::get('/api/showRestApiByID', function () {

    $all_records = DB::select("select * from rest_api_table order by id asc");
    return view('viewPage\showRestApiByID')->with("all_records", $all_records);
    
});

Route::get('/api/deleteRecordView', function () {

    $all_records = DB::select("select * from rest_api_table order by (id) ");
    return view('viewPage\deleteRecordView')->with("all_records", $all_records);

});


Route::resource('/api', "App\Http\Controllers\AppController");
Route::post('/api/showRestApiByID', "App\Http\Controllers\AppController@RestApiByID");