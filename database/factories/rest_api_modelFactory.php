<?php

namespace Database\Factories;

use App\Models\Model;
use Illuminate\Database\Eloquent\Factories\Factory;
// use App\Models\rest_api_model;

class rest_api_modelFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */

    protected $model = \App\Models\rest_api_model::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            //
            'name'          => $this->faker->name,
            'message'       => $this->faker->sentence(55),       
            'telephone'     => $this->faker->phoneNumber(),       
            'email'         => $this->faker->email()       
        ];
    }
}
