<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Big shope A Ecommerce Category Flat Bootstarp Resposive
	Website Template | Product :: w3layouts</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all" />
<!--theme-style-->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!--//theme-style-->
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<!--fonts-->
<!-- <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'> -->
<!--//fonts-->
<script src="js/jquery.min.js"></script>
<style type="text/css">
.content_box {
	cursor: pointer;
}
</style>

<!--script-->
</head>
<body>
	<!--header-->
	<div class="header">
		<div class="top-header">
			<div class="container">
				<div class="top-header-left">
					<ul class="support">
						<li><a href="#"><label> </label></a></li>
						<li><a href="#">7天24小时<span class="live">提供服务</span></a></li>
					</ul>
					<ul class="support">
						<li class="van"><a href="#"><label> </label></a></li>
						<li><a href="#">免费 <span class="live">送货</span></a></li>
					</ul>
					<div class="clearfix"></div>
				</div>
				<div class="top-header-right">
					<div class="down-top">
						<!-- <select class="in-drop">
							  <option value="English" class="in-of">English</option>
							  <option value="Japanese" class="in-of">Japanese</option>
							  <option value="French" class="in-of">French</option>
							  <option value="German" class="in-of">German</option>
							</select> -->
					</div>
					<div class="down-top top-down">
						<select class="in-drop">

							<option value="Dollar" class="in-of">人民币</option>
						</select>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="bottom-header">
			<div class="container">
				<div class="header-bottom-left">
					<div class="logo">
						<a href="index.jsp"><img src="images/logo.png" alt=" " /></a>
					</div>

					<div class="search">
						<s:form action="listBookName" method="post">
							<input type="text" name="book.bookname" />
							<input type="submit" value="SEARCH" />

						</s:form>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="header-bottom-right">
					<div class="account">
						<a href="login.jsp"><span> </span>你的账户</a>
					</div>
					<ul class="login">
						<li><a href="login.jsp"><span> </span>登陆</a></li>|
						<li><a href="register.jsp">注册</a></li>
					</ul>
					<div class="cart">
						<a href="#"><span> </span>购物车</a>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!---->
	<!-- start content -->
	<div class="container">

		<div class="women-product">
			<div class=" w_content">
				<div class="women">
					<%-- <a href="#"><h4>Enthecwear - <span>4449 itemms</span> </h4></a> --%>
					<!-- <ul class="w_nav">
					<li>Sort : </li>
			     	<li><a href="#">出版社</a></li>
			     	<li><a href="#">价格从低到高 </a></li> 
			     <div class="clearfix"> </div>	
			     </ul> -->
					<div class="clearfix"></div>
				</div>
			</div>
			<!-- grids_of_4 -->
			<div class="grid-product">
				<s:iterator value="#request.list">
					<s:form action="listSingleBook" method="post">

						<div class="product-grid">
							<div class="content_box">
								<div class="left-grid-view grid-view-left">

									<img src="<s:property value="imagepath"/>"
										class="img-responsive watch-right" alt="" /> <input
										type="hidden" name="book.imagepath"
										value="<s:property value="imagepath"/>" style="display:none;">
									<div class="mask">
										<div class="info"></div>
									</div>
								</div>
							</div>
							<input type="submit" class="submit" style="display:none;">
							<h4>
								<s:property value="bookname" />
							</h4>
							<s:property value="price" />
							<p>
								<s:property value="publish" />
							</p>
						</div>
					</s:form>
				</s:iterator>

			</div>

			<div class="clearfix"></div>
		</div>
	</div>
	<script type="text/javascript">
		$(document).ready(function() {
			$.each($(".content_box"), function() {
				$(this).click(function() {
					$(this).next().click();
				});
			});
		})
	</script>
	<div class="sub-cate">
		<div class=" top-nav rsidebar span_1_of_left">
			<h3 class="cate">分类查找</h3>
			<ul class="menu">
				<li class="item1"><a href="#">出版社<img class="arrow-img"
						src="images/arrow1.png" alt="" />
				</a>
					<ul class="cute">
						<s:iterator value="#session.list">
							<li class="subitem1"><a
								href="listBookPublish?book.publish=<s:property value="publish"/>"><s:property
										value="publish" /></a></li>
						</s:iterator>
					</ul></li>
				<li class="item2"><a href="#">书籍分类<img class="arrow-img "
						src="images/arrow1.png" alt="" /></a>
					<ul class="cute">
						<s:iterator value="#session.list">
							<li class="subitem1"><a
								href="listBookCategory?book.category=<s:property value="category"/>"><s:property
										value="category" /></a></li>
						</s:iterator>
					</ul></li>
				<li class="item3"><a href="#">作者<img
						class="arrow-img img-arrow" src="images/arrow1.png" alt="" />
				</a>
					<ul class="cute">
						<s:iterator value="#session.list">
							<li class="subitem1"><a
								href="listBookAuthor?book.author=<s:property value="author"/>"><s:property
										value="author" /></a></li>
						</s:iterator>
					</ul></li>
				<li class="item4"><a href="#">Cras iacaus rhone <img
						class="arrow-img img-left-arrow" src="images/arrow1.png" alt="" /></a>
					<ul class="cute">
						<li class="subitem1"><a href="product.html">Cute Kittens
						</a></li>
						<li class="subitem2"><a href="product.html">Strange Stuff
						</a></li>
						<li class="subitem3"><a href="product.html">Automatic
								Fails </a></li>
					</ul></li>
				<li>
					<ul class="kid-menu">
						<li><a href="product.html">Tempus pretium</a></li>
						<li><a href="product.html">Dignissim neque</a></li>
						<li><a href="product.html">Ornared id aliquet</a></li>
					</ul>
				</li>
				<ul class="kid-menu ">
					<li><a href="product.html">Commodo sit</a></li>
					<li><a href="product.html">Urna ac tortor sc</a></li>
					<li><a href="product.html">Ornared id aliquet</a></li>
					<li><a href="product.html">Urna ac tortor sc</a></li>
					<li><a href="product.html">Eget nisi laoreet</a></li>
					<li><a href="product.html">Faciisis ornare</a></li>
					<li class="menu-kid-left"><a href="contact.html">Contact
							us</a></li>
				</ul>

			</ul>
		</div>
		<!--initiate accordion-->
		<script type="text/javascript">
			$(function() {
				var menu_ul = $('.menu > li > ul'), menu_a = $('.menu > li > a');
				menu_ul.hide();
				menu_a.click(function(e) {
					e.preventDefault();
					if (!$(this).hasClass('active')) {
						menu_a.removeClass('active');
						menu_ul.filter(':visible').slideUp('normal');
						$(this).addClass('active').next().stop(true, true)
								.slideDown('normal');
					} else {
						$(this).removeClass('active');
						$(this).next().stop(true, true).slideUp('normal');
					}
				});

			});
		</script>
		<div class=" chain-grid menu-chain">
			<a href="single.html"><img class="img-responsive chain"
				src="images/wat.jpg" alt=" " /></a>
			<div class="grid-chain-bottom chain-watch">
				<span class="actual dolor-left-grid">300$</span> <span
					class="reducedfrom">500$</span>
				<h6>Lorem ipsum dolor</h6>
			</div>
		</div>
		<a class="view-all all-product" href="product.html">VIEW ALL
			PRODUCTS<span> </span>
		</a>
	</div>
	<div class="clearfix"></div>
	</div>
	<!---->
	<div class="footer">
		<div class="footer-top">
			<div class="container">
				<div class="latter">
					<h6>NEWS-LETTER</h6>
					<div class="sub-left-right">
						<form>
							<input type="text" value="Enter email here"
								onfocus="this.value = '';"
								onblur="if (this.value == '') {this.value = 'Enter email here';}" />
							<input type="submit" value="SUBSCRIBE" />
						</form>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="latter-right">
					<p>FOLLOW US</p>
					<ul class="face-in-to">
						<li><a href="#"><span> </span></a></li>
						<li><a href="#"><span class="facebook-in"> </span></a></li>
						<div class="clearfix"></div>
					</ul>
					<div class="clearfix"></div>
				</div>
				<div class="clearfix"></div>
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
						<li><a href="#">Dignissim neque</a></li>
						<li><a href="#">Ornared id aliquet</a></li>
						<li><a href="#">Ultrices id du</a></li>
						<li><a href="#">Commodo sit</a></li>
						<li><a href="#">Urna ac tortor sc</a></li>
						<li><a href="#">Ornared id aliquet</a></li>
						<li><a href="#">Urna ac tortor sc</a></li>
						<li><a href="#">Eget nisi laoreet</a></li>
						<li><a href="#">Faciisis ornare</a></li>
					</ul>
				</div>
				<div class="footer-bottom-cate bottom-grid-cat">
					<h6>FEATURE PROJECTS</h6>
					<ul>
						<li><a href="#">Curabitur sapien</a></li>
						<li><a href="#">Dignissim purus</a></li>
						<li><a href="#">Tempus pretium</a></li>
						<li><a href="#">Dignissim neque</a></li>
						<li><a href="#">Ornared id aliquet</a></li>
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
						<li><a href="#">Dignissim neque</a></li>
						<li><a href="#">Ornared id aliquet</a></li>
						<li><a href="#">Ultrices id du</a></li>
						<li><a href="#">Commodo sit</a></li>
						<li><a href="#">Urna ac tortor sc</a></li>
						<li><a href="#">Ornared id aliquet</a></li>
						<li><a href="#">Urna ac tortor sc</a></li>
						<li><a href="#">Eget nisi laoreet</a></li>
						<li><a href="#">Faciisis ornare</a></li>
					</ul>
				</div>
				<div class="footer-bottom-cate cate-bottom">
					<h6>OUR ADDERSS</h6>
					<ul>
						<li>Aliquam metus dui.</li>
						<li>orci, ornareidquet</li>
						<li>ut,DUI.</li>
						<li>nisi, dignissim</li>
						<li>gravida at.</li>
						<li class="phone">PH : 6985792466</li>
						<li class="temp">
							<p class="footer-class">
								Design by <a href="http://w3layouts.com/" target="_blank">W3layouts</a>
							</p>
						</li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
</body>
</html>