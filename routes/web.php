<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It is a breeze. Simply tell Lumen the URIs it should respond to
| and give it the Closure to call when that URI is requested.
|
*/

$router->get('/', function () use ($router) {
    return $router->app->version();
});

$router->group(['prefix' => 'user','middleware' => 'auth'], function () use ($router) {
    $router->get('',[
        'as' => 'user', 'uses' => 'UserController@getAllUsers'
    ]);

    $router->patch('update', [
        'as' => 'updateUser' , 'uses' => 'UserController@updateUser'
    ]);
    $router->delete('delete', [
        'as' => 'deleteUser' , 'uses' => 'UserController@deleteUser'
    ]);
    $router->post('ubahkey', [
        'as' => 'ubahKey', 'uses' => 'UserController@ubahKey'
    ]);
});

$router->post('/user/create', [
    'as' => 'createUser', 'uses'=> 'UserController@createUser'
]);