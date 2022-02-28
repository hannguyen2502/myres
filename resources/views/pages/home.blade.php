@extends('layout')
@section('content') 

<section class="header_text">
         We stand for top quality templates. Our genuine developers always optimized bootstrap commercial templates. 
         <br/>Don't miss to use our cheap abd best bootstrap templates.
</section>
       <div class="span12">                                                    
                        <div class="row">
                            <div class="span12">
                                <h4 class="title">
                                    <span class="pull-left"><span class="text"><span class="line">Sách <strong>Mới nhất</strong></span></span></span>
                                    {{-- <span class="pull-right">
                                        <a class="left button" href="#myCarousel" data-slide="prev"></a><a class="right button" href="#myCarousel" data-slide="next"></a>
                                    </span> --}}
                                </h4>
                                
                                <div id="myCarousel" class="myCarousel carousel slide">
                                    
                                    <div class="carousel-inner">
                                        <div class="active item">
                                            <ul class="thumbnails">
                                            @foreach($all_product as $key => $product)                             
                                                <li class="span3">
                                                    <div class="product-box">
                                                        <span class="sale_tag"></span>
                                                        <p><a href="product_detail.html"><img src="{{URL::to('public/uploads/product/'.$product->product_image)}}" alt="" /></a></p>
                                                        <a href="product_detail.html" class="title">{{$product->product_name}}</a><br/>
                                                        {{-- <a href="products.html" class="category">Commodo consequat</a> --}}
                                                        <p class="price">{{number_format($product->product_price).'đ'}}</p>
                                                        {{-- <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a> --}}
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
                        <br/>
                        {{-- <div class="row">
                            <div class="span12">
                                <h4 class="title">
                                    <span class="pull-left"><span class="text"><span class="line">Latest <strong>Products</strong></span></span></span>
                                    <span class="pull-right">
                                        <a class="left button" href="#myCarousel-2" data-slide="prev"></a><a class="right button" href="#myCarousel-2" data-slide="next"></a>
                                    </span>
                                </h4>
                                <div id="myCarousel-2" class="myCarousel carousel slide">
                                    <div class="carousel-inner">
                                        <div class="active item">
                                            <ul class="thumbnails">                                             
                                                <li class="span3">
                                                    <div class="product-box">
                                                        <span class="sale_tag"></span>
                                                        <p><a href="product_detail.html"><img src="{{('public/frontend/images/bootstrap-women-ware2.jpg')}}" alt="" /></a></p>
                                                        <a href="product_detail.html" class="title">Ut wisi enim ad</a><br/>
                                                        <a href="products.html" class="category">Commodo consequat</a>
                                                        <p class="price">$25.50</p>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="item">
                                            <ul class="thumbnails">
                                                <li class="span3">
                                                    <div class="product-box">
                                                        <p><a href="product_detail.html"><img src="{{('public/frontend/images/bootstrap-women-ware4.jpg')}}" alt="" /></a></p>
                                                        <a href="product_detail.html" class="title">Know exactly</a><br/>
                                                        <a href="products.html" class="category">Quis nostrud</a>
                                                        <p class="price">$45.50</p>
                                                    </div>
                                                </li>                                                                                                                           
                                            </ul>
                                        </div>
                                    </div>                          
                                </div>
                            </div>                      
                        </div> --}}
                        <div class="row feature_box">                       
                            <div class="span4">
                                <div class="service">
                                    <div class="responsive">    
                                        <img src="{{('public/frontend/images/feature_img_2.png')}}" alt="" />
                                        <h4>MODERN <strong>DESIGN</strong></h4>
                                        <p>Lorem Ipsum is simply dummy text of the printing and printing industry unknown printer.</p>                                  
                                    </div>
                                </div>
                            </div>
                            <div class="span4"> 
                                <div class="service">
                                    <div class="customize">         
                                        <img src="{{('public/frontend/images/feature_img_1.png')}}" alt="" />
                                        <h4>FREE <strong>SHIPPING</strong></h4>
                                        <p>Lorem Ipsum is simply dummy text of the printing and printing industry unknown printer.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="span4">
                                <div class="service">
                                    <div class="support">   
                                        <img src="{{('public/frontend/images/feature_img_3.png')}}" alt="" />
                                        <h4>24/7 LIVE <strong>SUPPORT</strong></h4>
                                        <p>Lorem Ipsum is simply dummy text of the printing and printing industry unknown printer.</p>
                                    </div>
                                </div>
                            </div>  
                        </div> 
                        <section class="our_client">

@endsection