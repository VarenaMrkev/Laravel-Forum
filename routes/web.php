<?php

use App\Http\Controllers\PostsController;
use App\Http\Controllers\TopicsController;
use App\Http\Controllers\UserController;
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


    Route::get('/', [TopicsController::class, 'index']);

    Route::get('/topics/create', [TopicsController::class, 'create'])->middleware('auth');

    Route::post('/topics', [TopicsController::class, 'store'])->middleware('auth');

    Route::delete('/topics/{topic}', [TopicsController::class, 'destroy'])->middleware('auth');

    Route::get('/topic/{topic}', [TopicsController::class, 'show']);

    Route::get('/posts/create/{topic}', [PostsController::class, 'create']);

    Route::get('/posts/{post}/edit', [PostsController::class, 'edit'])->middleware('auth');

    Route::post('/posts', [PostsController::class, 'store'])->middleware('auth');

    Route::put('/posts/{post}', [PostsController::class, 'update'])->middleware('auth');

    Route::delete('/posts/{post}', [PostsController::class, 'destroy'])->middleware('auth');

    // Show Register/Create Form
    Route::get('/register', [UserController::class, 'create'])->middleware('guest');

    // Create New User
    Route::post('/users', [UserController::class, 'store']);

    // Log User Out
    Route::post('/logout', [UserController::class, 'logout'])->middleware('auth');

    // Show Login Form
    Route::get('/login', [UserController::class, 'login'])->name('login')->middleware('guest');

    // Log In User
    Route::post('/users/authenticate', [UserController::class, 'authenticate']);
