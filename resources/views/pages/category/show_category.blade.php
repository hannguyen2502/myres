@extends('layout')
@section('content') 

{{-- <section class="header_text">
         We stand for top quality templates. Our genuine developers always optimized bootstrap commercial templates. 
         <br/>Don't miss to use our cheap abd best bootstrap templates.
</section> --}}
       <div class="span12">                                                    
                        <div class="row">
                            <div class="span12">
                                @foreach ($category_name as $key => $name)
                                <h4 class="title">
                                    <span class="pull-left"><span class="text"><span class="line">{{$name->category_name}}</span></span></span>
                                </h4>
                                
                                @endforeach
                                
                                <div id="myCarousel" class="myCarousel carousel slide">
                                    
                                    <div class="carousel-inner">
                                        <div class="active item">
                                            <ul class="thumbnails">
                                            @foreach($category_by_id as $key => $product)                             
                                                <li class="span3">
                                                    <div class="product-box">
                                                        <span class="sale_tag"></span>
                                                        <p><a href="{{URL::to('/chi-tiet-san-pham/'.$product->product_id)}}"><img src="{{URL::to('public/uploads/product/'.$product->product_image)}}" alt="" /></a></p>
                                                        <a href="product_detail.html" class="title">{{$product->product_name}}</a><br/>
                                                        <a href="products.html" class="category">Commodo consequat</a> 
                                                        <p class="price">{{number_format($product->product_price).'đ'}}</p>
                                                        <button class="btn btn-inverse" type="submit">Thêm giỏ hàng</button>
                                                    </div>
                                                </li>
                                             @endforeach 
                                            </ul>
                                        </div>
                                    </div> 
                                                              
                                </div>
                                
                            </div>                      
                        </div>
            </div>
@endsection