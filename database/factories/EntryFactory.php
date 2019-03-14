<?php

use App\Entry;
use Faker\Generator as Faker;

$factory->define(Entry::class, function (Faker $faker) {
    return [
        'title' => $faker->sentence(5, true),
        'body' => $faker->paragraph(3)
    ];
});
