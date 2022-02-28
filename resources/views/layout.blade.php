<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Bootstrap E-commerce Templates</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <!--[if ie]><meta content='IE=8' http-equiv='X-UA-Compatible'/><![endif]-->
        <!-- bootstrap -->
        <link href="{{asset('public/frontend/css/bootstrap.min.css')}}" rel="stylesheet">      
        <link href="{{asset('public/frontend/css/bootstrap-responsive.min.css')}}" rel="stylesheet">
        
        <link href="{{asset('public/frontend/css/bootstrappage.css')}}" rel="stylesheet"/>
        
        <!-- global styles -->
        <link href="{{asset('public/frontend/css/flexslider.css')}}" rel="stylesheet"/>
        <link href="{{asset('public/frontend/css/main.css')}}" rel="stylesheet"/>

        <!-- scripts -->
        <script src="{{asset('public/frontend/js/jquery-1.7.2.min.js')}}"></script>
        <script src="{{asset('public/frontend/js/bootstrap.min.js')}}"></script>               
        <script src="{{asset('public/frontend/js/superfish.js')}}"></script>  
        <script src="{{asset('public/frontend/js/jquery.scrolltotop.js')}}"></script>
        <!--[if lt IE 9]>           
            <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
            <script src="js/respond.min.js"></script>
        <![endif]-->
    </head>
    <body>      
        <div id="top-bar" class="container">
            <div class="row">
                <div class="span4">
                    <form method="POST" class="search_form">
                        <input type="text" class="input-block-level search-query" Placeholder="eg. T-sirt">
                    </form>
                </div>
                <div class="span8">
                    <div class="account pull-right">
                        <ul class="user-menu">              
                            <li><a href="#">My Account</a></li>
                            <li><a href="cart.html">Your Cart</a></li>
                            <li><a href="checkout.html">Checkout</a></li>                   
                            <li><a href="register.html">Login</a></li>      
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div id="wrapper" class="container">
            <section class="navbar main-menu">
                <div class="navbar-inner main-menu">                
                    <a href="index.html" class="logo pull-left"><img src="{{('public/frontend/image/logo1.png')}}" class="site_logo" alt=""></a>
                    @foreach($category as $key => $cate)
                    <nav id="menu" class="pull-right">
                        <ul>
                            <li><a href="{{URL::to('/danh-muc-san-pham/'.$cate->category_id)}}">{{$cate->category_name}}</a>                 
{{--                                 <ul>
                                    <li><a href="./products.html">Lacinia nibh</a></li>                                 
                                    <li><a href="./products.html">Eget molestie</a></li>
                                    <li><a href="./products.html">Varius purus</a></li>                                 
                              </ul> --}}
                            </li>                                                           
                        </ul>
                    </nav>
                    @endforeach
                </div>
            </section>
            <section  class="homepage-slider" id="home-slider">
                <div class="flexslider">
                    <ul class="slides">
                        <li>
                            <img src="{{('public/frontend/image/banner-1.jpg')}}" alt="" />
                        </li>
                        <li>
                            <img src="{{('public/frontend/image/banner-2.jpg')}}" alt="" />
                            <div class="intro">
                                <h1>Hội sách online</h1>
                                <p><span>Giảm giá lên đến 50%
                                </span></p>
                                {{-- <p><span>On selected books online and in stores</span></p> --}}
                            </div>
                        </li>
                    </ul>
                </div>          
            </section>

            <section class="main-content">
                    <div class="row">
                        @yield('content')
                    </div>                
            </section>
            
            <section id="footer-bar">
                <div class="row">
                    <div class="span3">
                        <h4>Navigation</h4>
                        <ul class="nav">
                            <li><a href="{{URL::to('/trang-chu')}}">Homepage</a></li>  
                            <li><a href="./about.html">About Us</a></li>
                            <li><a href="./contact.html">Contac Us</a></li>
                            <li><a href="./cart.html">Your Cart</a></li>
                            <li><a href="./register.html">Login</a></li>                            
                        </ul>                   
                    </div>
                    <div class="span4">
                        <h4>My Account</h4>
                        <ul class="nav">
                            <li><a href="#">My Account</a></li>
                            <li><a href="#">Order History</a></li>
                            <li><a href="#">Wish List</a></li>
                            <li><a href="#">Newsletter</a></li>
                        </ul>
                    </div>
                    <div class="span5">
                        <p class="logo"><img src="{{('public/frontend/images/logo.png')}}" class="site_logo" alt=""></p>
                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. the  Lorem Ipsum has been the industry's standard dummy text ever since the you.</p>
                        <br/>
                        <span class="social_icons">
                            <a class="facebook" href="#">Facebook</a>
                            <a class="twitter" href="#">Twitter</a>
                            <a class="skype" href="#">Skype</a>
                            <a class="vimeo" href="#">Vimeo</a>
                        </span>
                    </div>                  
                </div>  
            </section>
            <section id="copyright">
                <span>Copyright 2013 bootstrappage template  All right reserved.</span>
            </section>
        </div>
        <script src="{{asset('public/frontend/js/common.js')}}"></script>
        <script src="{{asset('public/frontend/js/jquery.flexslider-min.js')}}"></script>
        <script type="text/javascript">
            $(function() {
                $(document).ready(function() {
                    $('.flexslider').flexslider({
                        animation: "fade",
                        slideshowSpeed: 4000,
                        animationSpeed: 600,
                        controlNav: false,
                        directionNav: true,
                        controlsContainer: ".flex-container" 
                    });
                });
            });
        </script>
    </body>
</html>