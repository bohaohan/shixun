<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>二手市场</title>
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <!--theme-style-->
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <!--//theme-style-->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta charset="UTF-8">
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!--fonts-->
    <!--<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>-->
    <!--//fonts-->
    <script src="js/jquery.min.js"></script>

    <!--script-->
    <style type="text/css">
        .product-thumbnail {
            width: 50px;
            display: inline-block;
            margin-right: 10px;
        }
        .product-thumbnail img {
            width: 50px;
            border-radius: 3px;
            -webkit-border-radius: 3px;
            -moz-border-radius: 3px;
        }
        .shopping-cart-item h6 {
            font-size: 14px;
            font-weight: 400;
            margin: 0;
            display: inline-block;
        }
        table td, table th {
            border: 1px solid #ecedf1;
            padding: 12px 20px;
            text-align: left;
            transition: background 0.3s;
            -webkit-transition: background 0.3s;
            -moz-transition: background 0.3s;
        }
        .contact_right {
            margin-top: 28px;
        }
        .numeric-input-holder {
            width: 115px;
            display: block;
            position: relative;
            -webkit-touch-callout: none;
            -webkit-user-select: none;
            -khtml-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
            -webkit-transform: translateZ(0px);
        }
    </style>
</head>
<body> 
	<!--header-->
	<div class="header">
		<div class="top-header">
			<div class="container">
				<div class="top-header-left">
					<ul class="support">
						<li><a href="#"><label> </label></a></li>
						<li><a href="#">欢迎来到<span class="live">蛤蛤</span></a></li>
					</ul>
					<ul class="support">
						<li class="van"><a href="#"><label> </label></a></li>
						<li><a href="#"></a></li>
					</ul>
					<div class="clearfix"> </div>
				</div>
				<div class="top-header-right">
					<div class="down-top">		
						  <!--<select class="in-drop">-->
							  <!--<option value="English" class="in-of">Chinese</option>-->
							  <!--<option value="Japanese" class="in-of">Japanese</option>-->
							  <!--<option value="French" class="in-of">French</option>-->
							  <!--<option value="German" class="in-of">German</option>-->
							<!--</select>-->
					 </div>
					 <div class="down-top top-down">
						<select class="in-drop">
						    <option value="Dollar" class="in-of">人民币</option>
						</select>
					 </div>
					<div class="clearfix"> </div>	
				</div>
				<div class="clearfix"> </div>		
			</div>
		</div>
		<div class="bottom-header">
			<div class="container">
				<div class="header-bottom-left">
					<div class="logo">
						<a href="index.html"><img src="images/logo.png" alt=" " /></a>
					</div>
					<div class="search">
						<input type="text" value="" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}" >
						<input type="submit"  value="SEARCH">

					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="header-bottom-right">					
						<div class="account"><a href="login.jsp"><span> </span>你的账户</a></div>
							<ul class="login">
								<li><a href="login.jsp"><span> </span>登陆</a></li> |
								<li ><a href="register.jsp">注册</a></li>
							</ul>
						<div class="cart"><a href="shopcart.jsp"><span> </span>购物车</a></div>
					<div class="clearfix"> </div>
				</div>
				<div class="clearfix"> </div>	
			</div>
		</div>
	</div>
	<!---->
	<div class="container">

			<!---->
		<div class="main">
            <div class="reservation_top">
                <div class=" contact_right">
                    <table class="table table-hover">

                        <tr>
                            <th>Product</th>
                            <th>Price</th>
                            <th>Quantity</th>
                            <th>Total</th>
                            <th></th>
                        </tr>

                        <tr>
                            <td class="shopping-cart-item">
                                <div class="product-thumbnail">
                                    <img src="images/pic11.jpg" alt="">
                                </div>
                                <h6><a href="#">Woo Ninja</a></h6>
                            </td>
                            <td class="price">20</td>
                            <td><input class="numeric-input" type="text" value="1"></td>
                            <td class="total"><strong>20</strong></td>
                            <td><a href="#" style="color: red;">x</a></td>
                        </tr>

                        <tr>
                            <td class="shopping-cart-item">
                                <div class="product-thumbnail">
                                    <img src="images/pic11.jpg" alt="">
                                </div>
                                <h6><a href="#">Happy Ninja</a></h6>
                            </td>
                            <td class="price">35</td>
                            <td><input class="numeric-input" type="text" value="1"></td>
                            <td class="total"><strong>35</strong></td>
                            <td><a href="#" style="color: red;">x</a></td>
                        </tr>

                        <tr>
                            <td class="shopping-cart-item">
                                <div class="product-thumbnail">
                                    <img src="images/pic11.jpg" alt="">
                                </div>
                                <h6><a href="#">Woo Album #2</a></h6>
                            </td>
                            <td class="price">9</td>
                            <td><input class="numeric-input" type="text" value="1"></td>
                            <td class="total"><strong>9</strong></td>
                            <td><a href="#" style="color: red;">x</a></td>
                        </tr>
                        <tr>
                            <td class="shopping-cart-item">

                            </td>
                            <td></td>
                            <td><b>total</b></td>
                            <td class="t-total"><strong>9</strong></td>
                            <td></td>
                        </tr>
                           <script type="text/javascript">
                               function sum(){
                                   var sum = 0;
                                   $.each($(".total"),function(){
                                       var i = parseInt($(this).find("strong").text());
                                       if(!isNaN(i)) sum+=i;
                                   })
                                   $(".t-total").find("strong").text(sum);
                               }
                               $(document).ready(function(){
                                   sum();
                                   $.each($(".numeric-input"),function(){
                                       $(this).on("input", function(){
                                           var q = parseInt($(this).val());
                                           if(!isNaN(q)){
                                               var price = parseInt($(this).parent().prev().text());
                                               console.log(q);
                                               console.log(price);
                                               var c = q*price;
                                               $(this).parent().next().find("strong").text(c);
                                               sum();
                                           }
                                       });
                                   })
                               })
                           </script>
                        <tr>
                            <td class="apply-coupon">
                            </td>
                            <td colspan="4" class="align-right">
                                <button class="btn btn-info">Proceed to checkout</button>
                            </td>
                        </tr>

                    </table>
                </div>
            </div>
        </div>
		<div class="sub-cate">
		<div class=" top-nav rsidebar span_1_of_left">
	        <h3 class="cate">åç±»</h3>
		<ul class="menu">
		<li class="item1"><a href="#">Curabitur sapien<img class="arrow-img" src="images/arrow1.png" alt=""/> </a>
			<ul class="cute">
				<li class="subitem1"><a href="product.html">Cute Kittens </a></li>
				<li class="subitem2"><a href="product.html">Strange Stuff </a></li>
				<li class="subitem3"><a href="product.html">Automatic Fails </a></li>
			</ul>
		</li>
		<li class="item2"><a href="#">Dignissim purus <img class="arrow-img " src="images/arrow1.png" alt=""/></a>
			<ul class="cute">
				<li class="subitem1"><a href="product.html">Cute Kittens </a></li>
				<li class="subitem2"><a href="product.html">Strange Stuff </a></li>
				<li class="subitem3"><a href="product.html">Automatic Fails </a></li>
			</ul>
		</li>
		<li class="item3"><a href="#">Ultrices id du<img class="arrow-img img-arrow" src="images/arrow1.png" alt=""/> </a>
			<ul class="cute">
				<li class="subitem1"><a href="product.html">Cute Kittens </a></li>
				<li class="subitem2"><a href="product.html">Strange Stuff </a></li>
				<li class="subitem3"><a href="product.html">Automatic Fails</a></li>
			</ul>
		</li>
		<li class="item4"><a href="#">Cras iacaus rhone <img class="arrow-img img-left-arrow" src="images/arrow1.png" alt=""/></a>
			<ul class="cute">
				<li class="subitem1"><a href="product.html">Cute Kittens </a></li>
				<li class="subitem2"><a href="product.html">Strange Stuff </a></li>
				<li class="subitem3"><a href="product.html">Automatic Fails </a></li>
			</ul>
		</li>
				<li>
			<ul class="kid-menu">
				<li><a href="product.html">Tempus pretium</a></li>
				<li ><a href="product.html">Dignissim neque</a></li>
				<li ><a href="product.html">Ornared id aliquet</a></li>
			</ul>
		</li>
		<ul class="kid-menu ">
				<li><a href="product.html">Commodo sit</a></li>
				<li ><a href="product.html">Urna ac tortor sc</a></li>
				<li><a href="product.html">Ornared id aliquet</a></li>
				<li><a href="product.html">Urna ac tortor sc</a></li>
				<li ><a href="product.html">Eget nisi laoreet</a></li>
				<li><a href="product.html">Faciisis ornare</a></li>
				<li class="menu-kid-left"><a href="contact.html">Contact us</a></li>
			</ul>
		
	    </ul>
		</div>
		<!--initiate accordion-->
		<script type="text/javascript">
			$(function() {
			    var menu_ul = $('.menu > li > ul'),
			           menu_a  = $('.menu > li > a');
			    menu_ul.hide();
			    menu_a.click(function(e) {
			        e.preventDefault();
			        if(!$(this).hasClass('active')) {
			            menu_a.removeClass('active');
			            menu_ul.filter(':visible').slideUp('normal');
			            $(this).addClass('active').next().stop(true,true).slideDown('normal');
			        } else {
			            $(this).removeClass('active');
			            $(this).next().stop(true,true).slideUp('normal');
			        }
			    });
			
			});
		</script>
					<div class=" chain-grid menu-chain">
	   		     		<a href="single.jsp"><img class="img-responsive chain" src="images/wat.jpg" alt=" " /></a>	   		     		
	   		     		<div class="grid-chain-bottom chain-watch">
		   		     		<span class="actual dolor-left-grid">300$</span>
		   		     		<span class="reducedfrom">500$</span>  
		   		     		<h6>Lorem ipsum dolor</h6>  		     			   		     										
	   		     		</div>
	   		     	</div>
	   		     	 <a class="view-all all-product" href="product.html">VIEW ALL PRODUCTS<span> </span></a> 	
			</div>
	     </div>
	<!---->
	<div class="footer">
		<div class="footer-top">
			<div class="container">
				<div class="latter">
					<h6>NEWS-LETTER</h6>
					<div class="sub-left-right">
						<form>
							<input type="text" value="Enter email here"onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Enter email here';}" />
							<input type="submit" value="SUBSCRIBE" />
						</form>
					</div>
					<div class="clearfix"> </div>
				</div>

				<div class="clearfix"> </div>
			</div>
		</div>
		<div class="footer-bottom">
			<div class="container">
				<div class="footer-bottom-cate">
					<h6>CATEGORIES</h6>
					<ul>
						<li><a href="#">Curabitur sapien</a></li>
						<li><a href="#">Dignissim purus</a></li>
						<li><a href="#">Tempus pretium</a></li>
						<li ><a href="#">Dignissim neque</a></li>
						<li ><a href="#">Ornared id aliquet</a></li>
						<li><a href="#">Ultrices id du</a></li>
						<li><a href="#">Commodo sit</a></li>
						<li ><a href="#">Urna ac tortor sc</a></li>
						<li><a href="#">Ornared id aliquet</a></li>
						<li><a href="#">Urna ac tortor sc</a></li>
						<li ><a href="#">Eget nisi laoreet</a></li>
						<li ><a href="#">Faciisis ornare</a></li>
					</ul>
				</div>
				<div class="footer-bottom-cate bottom-grid-cat">
					<h6>FEATURE PROJECTS</h6>
					<ul>
						<li><a href="#">Curabitur sapien</a></li>
						<li><a href="#">Dignissim purus</a></li>
						<li><a href="#">Tempus pretium</a></li>
						<li ><a href="#">Dignissim neque</a></li>
						<li ><a href="#">Ornared id aliquet</a></li>
						<li><a href="#">Ultrices id du</a></li>
						<li><a href="#">Commodo sit</a></li>
					</ul>
				</div>
				<div class="footer-bottom-cate">
					<h6>TOP BRANDS</h6>
					<ul>
						<li><a href="#">Curabitur sapien</a></li>
						<li><a href="#">Dignissim purus</a></li>
						<li><a href="#">Tempus pretium</a></li>
						<li ><a href="#">Dignissim neque</a></li>
						<li ><a href="#">Ornared id aliquet</a></li>
						<li><a href="#">Ultrices id du</a></li>
						<li><a href="#">Commodo sit</a></li>
						<li ><a href="#">Urna ac tortor sc</a></li>
						<li><a href="#">Ornared id aliquet</a></li>
						<li><a href="#">Urna ac tortor sc</a></li>
						<li ><a href="#">Eget nisi laoreet</a></li>
						<li ><a href="#">Faciisis ornare</a></li>
					</ul>
				</div>
				<div class="footer-bottom-cate cate-bottom">
					<h6>OUR ADDERSS</h6>
					<ul>
						<li>Aliquam metus  dui. </li>
						<li>orci, ornareidquet</li>
						<li> ut,DUI.</li>
						<li >nisi, dignissim</li>
						<li >gravida at.</li>
						<li class="phone">PH : 6985792466</li>
						<li class="temp"> <p class="footer-class">Design by <a href="http://w3layouts.com/" target="_blank">W3layouts</a> </p></li>
					</ul>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
</body>
</html>