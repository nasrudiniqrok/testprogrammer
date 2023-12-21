<?php

use App\Http\Controllers\TestController;
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

// Route::get('/', function () {
//     return view('welcome');
// });
Route::get('/', [TestController::class,'index'])->name('test.index');
Route::get('/tambah', [TestController::class,'create'])->name('test.create');
Route::post('/', [TestController::class,'store'])->name('test.store');
Route::get('/edit/{test}', [TestController::class,'edit'])->name('test.edit');
Route::put('/{test}', [TestController::class,'update'])->name('test.update');
Route::delete('/{test}', [TestController::class,'destroy'])->name('test.destroy');

