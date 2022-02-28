<?php

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
//frontend
 Route::get('/','HomeController@index');
 Route::get('/trang-chu','HomeController@index');

 //danh muc san pham trang chu
 Route::get('/danh-muc-san-pham/{category_id}','CategoryProduct@show_category_home');
 Route::get('/chi-tiet-san-pham/{product_id}','ProductController@details_product');


 //backend
  Route::get('/admin','AdminController@index');
  Route::get('/dashboard','AdminController@showdashboard');
  Route::post('/admin-dashboard','AdminController@dashboard');
  Route::get('/logout','AdminController@logout');

 //category
  Route::get('/add-category','CategoryProduct@add_category');
  Route::get('/edit-category/{category_product_id}','CategoryProduct@edit_category');
  Route::get('/delete-category/{category_product_id}','CategoryProduct@delete_category');
  Route::get('/all-category','CategoryProduct@all_category');

  Route::get('/unactive-category/{category_product_id}','CategoryProduct@unactive_category');
  Route::get('/active-category/{category_product_id}','CategoryProduct@active_category');

  Route::post('/save-category','CategoryProduct@save_category');
  Route::post('/update-category/{category_product_id}','CategoryProduct@update_category');

  //product
  Route::get('/add-product','ProductController@add_product');
  Route::get('/edit-product/{product_id}','ProductController@edit_product');
  Route::get('/delete-product/{product_id}','ProductController@delete_product');
  Route::get('/all-product','ProductController@all_product');

  Route::get('/unactive-product/{product_id}','ProductController@unactive_product');
  Route::get('/active-product/{product_id}','ProductController@active_product');

  Route::post('/save-product','ProductController@save_product');
  Route::post('/update-product/{product_id}','ProductController@update_product');