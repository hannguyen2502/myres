<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Session;
use App\Http\Requests;
use Illuminate\Support\Facades\Redirect;
session_start();

class HomeController extends Controller
{
    public function index(){
    	$cate_product = DB::table('tbl_category')->where('category_status','1')->orderby('category_id','desc')->get();

    	// $all_product = DB::table('tbl_product')
    	// ->join('tbl_category','tbl_category.category_id','=','tbl_product.category_id')
    	// ->orderby('tbl_product.product_id','desc')->get();

    	$all_product = DB::table('tbl_product')->where('product_status','1')->orderby('product_id','desc')->limit(4)->get();

    	return view('pages.home')->with('category',$cate_product)->with('all_product',$all_product);
    }
}
