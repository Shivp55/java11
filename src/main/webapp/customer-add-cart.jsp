<%@page import="Model.Customer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import= "Dao.ProductDao"%>
    <%@ page import="Model.Product" %>
    <%@page import= "Dao.ProductDao" %>
    <%@ page import="Model.Customer" %> 
    <%@ page import="java.util.*" %>
    <%@ page import="Model.Cart" %> 
  <%@page import= "Dao.CartDao" %>

<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Male_Fashion Template">
    <meta name="keywords" content="Male_Fashion, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Male-Fashion | Template</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@300;400;600;700;800;900&display=swap"
    rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
</head>

<body>
<%
Customer c = null;
if(session.getAttribute("data")!=null){
	c= (Customer)session.getAttribute("data");
}
else{
	response.sendRedirect("customer-login.jsp");
}
%>
<script>  
var request=new XMLHttpRequest();  
function searchInfo()
{  
	var name=document.vinform.qty.value;  
	var url="cart-ajax.jsp?val="+name;+  
  	try
  	{  
		request.onreadystatechange=function()
		{  
			if(request.readyState==4)
			{  
				var val=request.responseText;  
				document.getElementById('tops').innerHTML=val;  
			}  
		}  
		request.open("GET",url,true);  
		request.send();  
	}
  	catch(e)
  	{
  		alert("Unable to connect to server");
  	}  
}  

	



</script>


 <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Offcanvas Menu Begin -->
    <div class="offcanvas-menu-overlay"></div>
    <div class="offcanvas-menu-wrapper">
        <div class="offcanvas__option">
            <div class="offcanvas__links">
                <a href="#">Sign in</a>
                <a href="#">FAQs</a>
            </div>
            <div class="offcanvas__top__hover">
                <span>Usd <i class="arrow_carrot-down"></i></span>
                <ul>
                    <li>USD</li>
                    <li>EUR</li>
                    <li>USD</li>
                </ul>
            </div>
        </div>
        <div class="offcanvas__nav__option">
            <a href="#" class="search-switch"><img src="img/icon/search.png" alt=""></a>
            <a href="#"><img src="img/icon/heart.png" alt=""></a>
            <a href="#"><img src="img/icon/cart.png" alt=""> <span>0</span></a>
            <div class="price">$0.00</div>
        </div>
        <div id="mobile-menu-wrap"></div>
        <div class="offcanvas__text">
            <p>Free shipping, 30-day return or refund guarantee.</p>
        </div>
    </div>
    <!-- Offcanvas Menu End -->

    <!-- Header Section Begin -->
    <header class="header">
                <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-3">
                    <div class="header__logo">
                        <a href="./customer-index.jsp"><img src="img/logo.png" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <nav class="header__menu mobile-menu">
                        <ul>
                            <li class="active"><a href="customer-index.jsp">Home</a></li>
                            <li><a href="#">Your Activity</a>
                                <ul class="dropdown"> 
                                    <li><a href="shop.jsp">Shop Details</a></li>
                                    <li><a href="./customer-add-cart.jsp">Shopping Cart</a></li>
                                    <li><a href="./checkout.jsp">Check Out</a></li>
                                    
                                    
                                </ul>
                            </li>
                             <li><a href="#"><%=c.getName() %></a>
                                <ul class="dropdown">
                                    <li><a href="customer-profile.jsp">Profile</a></li>
                                    <li><a href="customer-change-password.jsp">Change Password</a></li>
                                    <li><a href="logout.jsp">Logout</a></li>
                                </ul>
                            </li>
                             <li>
                            <a href="#">Our Group</a>
                            	<ul class="dropdown">
                            		<li><a href="./blog.jsp">Blog</a></li>
                            		<li><a href="./contact.jsp">Contact</a></li>
                            		<li><a href="./about.jsp">About Us</a></li>
                            		</ul>
                           	</li>
                           	
                        </ul>
                    </nav>
                </div>
                <div class="col-lg-3 col-md-3">
                    <div class="header__nav__option">
                        <a href="#" class="search-switch"><img src="img/icon/search.png" alt=""></a>
                        <a href="#"><img src="img/icon/heart.png" alt=""></a>
                        <a href="#"><img src="img/icon/cart.png" alt=""> <span>0</span></a>
                        <div class="price">$0.00</div>
                    </div>
                </div>
            </div>
            <div class="canvas__open"><i class="fa fa-bars"></i></div>
        </div>
    </header>
    <!-- Header Section End -->

    <!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__text">
                        <h4>Shopping Cart</h4>
                        <div class="breadcrumb__links">
                            <a href="./index.jsp">Home</a>
                            <a href="./shop.jsp">Shop</a>
                            <span>Shopping Cart</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

    <!-- Shopping Cart Section Begin -->
    <section class="shopping-cart spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="shopping__cart__table">
                        <table>
                            <thead>
                                <tr>
                                	<th>Product Image</th>
                                	<th>&nbsp;</th>
                                	<th>Product Name&nbsp;&nbsp;&nbsp;&nbsp;</th>
                                	
                                		<th>&nbsp;</th>
                                    <th>Total Price&nbsp;&nbsp;&nbsp;&nbsp;</th>
                                   	<th>&nbsp;</th>
                                   		<th>&nbsp;</th>
                                   
                                    <th>Delete Product</th>
                                </tr>
                            </thead>
                            <tbody>
                            <%int id=c.getId(); %>
                            <%double total=0; %>
                            
                           <%List<Cart> list=CartDao.getAllProductsById(id); %>
                            <%for(Cart c1:list){ %>
                                 <tr>
                                    <td >
                                        <div class="product__cart__item__pic">
                                            <img src="uploaded images/<%=c1.getImage() %>" alt="">
                                            
                                        </div>
                                     
                                   </td>
                                   <td >
                                        <div class="product__cart__item__pic">
                                            
                                            
                                        </div>
                                     
                                   </td>

                                   
                                   
                                   
                                   
                                  <td >
                                        <div class="product__cart__item__pic">
                                           <h4><%=c1.getPname() %></h4>
                                            
                                        </div>
                                     
                                   </td>
                                   <td >
                                        <div class="product__cart__item__pic">
                                            
                                            
                                        </div>
                                     
                                   </td>
                                   
                                    <td >
                                        <div class="product__cart__item__pic">
                                           <h4><i class="fa fa-rupee"></i><%=c1.getPprice()%>   </h4>
                                            
                                        </div>
                                     
                                   </td>
                                   <td >
                                        <div class="product__cart__item__pic">
                                            
                                            
                                        </div>
                                     
                                   </td>
                                    
                                        
                                        <td >
                                        <div class="product__cart__item__pic">
                                            
                                            
                                        </div>
                                     
                                   </td>
                                   <%total=total+c1.getPprice(); %>
                                    <td >
                                        <div class="product__cart__item__text">
                                        <%int pid=c1.getPid(); %>
                                        <form action="ProductController" method="post">
                                        	<input type="hidden" name="id2" value="<%=pid%>">
                                        	<button type="submit" name="action" class="site-btn" value="deletefromcart">delete</button>
                                        </form>
                                           
                                        </div>
                                    </td>
                                  
                                </tr>
                                <%} %>
                            </tbody>
                        </table>
                    </div>
                   
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-6">
                            <div class="continue__btn">
                                <a href="#">Continue Shopping</a>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-6">
                            <div class="continue__btn update__btn">
                                <form action="CartController" method="post"><button type="submit"  name="action" value="Update Cart"><i class="fa fa-spinner" ></i> Update cart</button>
                                </form>
                            </div>
                            
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="cart__discount">
                        <h6>Discount codes</h6>
                        <form action="CartController" method="post">
                            <input type="text" placeholder="Coupon code">
                            <button type="submit">Apply</button>
											                        
                    </div>
                    <div class="cart__total">
                        <h6>Cart total</h6>
                        <ul>
                            <li>Subtotal <span> <%=total %></span></li>
                            <li>Total <span> <%=total %></span></li>
                        </ul>
                        <a  href="customer-checkout.jsp" class="site-btn" >Proceed to CheckOut</a>
                        
                    </div>
                </div>
                </form>
            </div>
        </div>
    </section>
    <!-- Shopping Cart Section End -->

    <!-- Footer Section Begin -->
    <footer class="footer">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="footer__about">
                        <div class="footer__logo">
                            <a href="#"><img src="img/footer-logo.png" alt=""></a>
                        </div>
                        <p>The customer is at the heart of our unique business model, which includes design.</p>
                        <a href="#"><img src="img/payment.png" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-2 offset-lg-1 col-md-3 col-sm-6">
                    <div class="footer__widget">
                        <h6>Shopping</h6>
                        <ul>
                            <li><a href="#">Clothing Store</a></li>
                            <li><a href="#">Trending Shoes</a></li>
                            <li><a href="#">Accessories</a></li>
                            <li><a href="#">Sale</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-2 col-md-3 col-sm-6">
                    <div class="footer__widget">
                        <h6>Shopping</h6>
                        <ul>
                            <li><a href="#">Contact Us</a></li>
                            <li><a href="#">Payment Methods</a></li>
                            <li><a href="#">Delivary</a></li>
                            <li><a href="#">Return & Exchanges</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3 offset-lg-1 col-md-6 col-sm-6">
                    <div class="footer__widget">
                        <h6>NewLetter</h6>
                        <div class="footer__newslatter">
                            <p>Be the first to know about new arrivals, look books, sales & promos!</p>
                            <form action="#">
                                <input type="text" placeholder="Your email">
                                <button type="submit"><span class="icon_mail_alt"></span></button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="footer__copyright__text">
                            <script>
                                document.write(new Date().getFullYear());
                            </script>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- Footer Section End -->

    <!-- Search Begin -->
    <div class="search-model">
        <div class="h-100 d-flex align-items-center justify-content-center">
            <div class="search-close-switch">+</div>
            <form class="search-model-form">
                <input type="text" id="search-input" placeholder="Search here.....">
            </form>
        </div>
    </div>
    <!-- Search End -->

    <!-- Js Plugins -->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/jquery.nicescroll.min.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/jquery.countdown.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/mixitup.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/main.js"></script>
</body>

</html>