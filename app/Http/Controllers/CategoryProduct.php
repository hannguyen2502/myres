<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Session;
use App\Http\Requests;
use Illuminate\Support\Facades\Redirect;
session_start();

class CategoryProduct extends Controller
{
    public function add_category(){
    	return view('admin.add_category');
    }
    public function all_category(){
    	$all_category = DB::table('tbl_category')->get();
    	$manager_category = view('admin.all_category')->with('all_category',$all_category);
    	return view('admin_layout')->with('admin.all_category',$manager_category);
    }
    public function save_category(Request $request){
    	$data = array();
    	$data['category_name'] = $request->category_product_name;
    	$data['category_desc'] = $request->category_product_desc;
    	$data['category_status'] = $request->category_product_status;
    	DB::table('tbl_category')->insert($data);
    	Session::put('message','Thêm danh mục thành công!');
    	return Redirect::to('all-category');
    }
     public function unactive_category($category_product_id){
        DB::table('tbl_category')->where('category_id',$category_product_id)->update(['category_status'=>0]);
        Session::put('message','Không kích hoạt danh mục thành công');
        return Redirect::to('all-category');

    }
    public function active_category($category_product_id){
        DB::table('tbl_category')->where('category_id',$category_product_id)->update(['category_status'=>1]);
        Session::put('message','Kích hoạt danh mục thành công');
        return Redirect::to('all-category');
    }
    public function edit_category($category_product_id){
    	$edit_category = DB::table('tbl_category')->where('category_id',$category_product_id)->get();
    	$manager_category = view('admin.edit_category')->with('edit_category',$edit_category);
    	return view('admin_layout')->with('admin.edit_category',$manager_category);
    }
    public function update_category(Request $request,$category_product_id){
    	$data = array();
    	$data['category_name'] = $request->category_product_name;
    	$data['category_desc'] = $request->category_product_desc;
    	DB::table('tbl_category')->where('category_id',$category_product_id)->update($data);
    	Session::put('message','Cập nhật danh mục thành công');
    	return Redirect::to('all-category');
    }
    public function delete_category($category_product_id){
    	DB::table('tbl_category')->where('category_id',$category_product_id)->delete();
    	Session::put('message','Xóa danh mục thành công');
    	return Redirect::to('all-category');
    }
    //end function admin page

    public function show_category_home($category_id){
        $cate_product = DB::table('tbl_category')->where('category_status','1')->orderby('category_id','desc')->get();
        $category_by_id = DB::table('tbl_product')->join('tbl_category','tbl_product.category_id','=','tbl_category.category_id')->where('tbl_product.category_id',$category_id)->get();
        $category_name = DB::table('tbl_category')->where('tbl_category.category_id',$category_id)->limit(1)->get();

        return view('pages.category.show_category')->with('category',$cate_product)
        ->with('category_by_id',$category_by_id)->with('category_name',$category_name);
    }
}
