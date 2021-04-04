<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use App\Http\Resources\rest_api_resource;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        //
        // rest_api_resource::withoutWrapping();    // no wrap data{} utilizzando le collection di JSONResource
    }
}
