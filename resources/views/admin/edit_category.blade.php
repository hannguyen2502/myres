@extends('admin_layout')
@section('admin_content')

<div class="row">
            <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            Cập nhật danh mục sách
                        </header>
                        <?php
                                $message = Session::get('message');
                                if($message){
                                    echo $message;
                                    Session::put('message',null);
                                }
                            ?>
                        <div class="panel-body">
                            @foreach($edit_category as $key => $edit_value)
                            
                            <div class="position-center">
                                <form role="form" action="{{URL::to('/update-category/'.$edit_value->category_id)}}" method="post">
                                    {{csrf_field()}}
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Tên danh mục</label>
                                    <input type="text" value="{{$edit_value->category_name}}" name="category_product_name" class="form-control" id="exampleInputEmail1" placeholder="">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Mô tả danh mục</label>
                                    <textarea name="category_product_desc" style="resize: none" rows="5" class="form-control" id="exampleInputEmail1">{{$edit_value->category_desc}}</textarea>
                                </div>
                                <button type="submit" name="update_category" class="btn btn-info">Cập nhật</button>
                            </form>
                            </div>
                            @endforeach
                        </div>
                    </section>

            </div>
    </div>
@endsection