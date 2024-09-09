<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\BlogController;

Route::redirect('/', 'list');

Route::get('list',[BlogController::class,'list'])->name('listPage');
Route::post('create',[BlogController::class,'create'])->name('createBlog');
Route::get('delete/{id}',[BlogController::class,'delete'])->name('deleteBlog');
Route::get('details/{id}',[BlogController::class,'details'])->name('blogDetails');
Route::get('update/{id}',[BlogController::class,'updatePage'])->name('updatePage');
Route::post('update',[BlogController::class,'update'])->name('update');
