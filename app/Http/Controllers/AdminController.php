<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Session;
use App\Http\Requests;
use Illuminate\Support\Facades\Redirect;
session_start();

class AdminController extends Controller
{
    public function index(){
    	return view('admin_login');
    }
    public function showdashboard(){
    	return view('admin.dashboard');
    }

    public function dashboard(Request $request){
    	$ad_email = $request->ad_email;
    	$ad_pass = md5($request->ad_pass);
    	$result = DB::table('tbl_admin')->where('ad_email',$ad_email)->where('ad_pass',$ad_pass)->first();
        // $result = DB::table('tbl_admin')->where('ad_email',$ad_email)->where('ad_pass',$ad_pass)->get();
        if($result){
        	Session::put('ad_name',$result->ad_name);
        	Session::put('ad_id',$result->ad_id);
        	return Redirect::to('/dashboard');
        }
        else{
        	Session::put('message','Sai mật khẩu hoặc email');
        	return Redirect::to('/admin');
        }
    }

     public function logout(){
        Session::put('ad_name',null);
        Session::put('ad_id',null);
        return Redirect::to('/admin'); 
     }
}
