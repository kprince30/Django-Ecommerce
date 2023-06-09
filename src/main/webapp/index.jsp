
<%@page import="java.util.ArrayList"%>
<%@page import="com.sks.entities.Category"%>
<%@page import="com.sks.dao.ProductDao"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.sks.helper.ConnectionProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Drfruit Shop(Ecommerce)</title>
        <!--css-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
          <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">

        
        <style>

				#features{
				  padding: 4% 15%;
				  text-align: center;
				  background-color: #ffffff;
				  position: relative;
				
				}
				.feature-box{
				  padding: 4%;
				}
				 #features i{
				   color: #ef8172;
				   margin-bottom: 1rem;
				 }
				 #features i:hover{
				   color: #ff4c68;
				 }
				 #features h3{
				   font-size: 1.5rem;
				   font-family: "Montserrat";
				   font-weight: 700;
				 }
				 #features p{
				   color: #8f8f8f;
				 }
				 .slide-banner-class{
				     width: 100%;
				 }
				 img{
				     display: block;
				     max-width: 100%;
				     height: auto;
				 }
        </style>
    <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
    </head>
    <body style="background: #F6ECEC">
        
     <!--navbar-->   
   <%@include file="normal_navbar.jsp"%>
        
   <!--banner-->
   <div class="container-fluid p-0 m-0" >
       <div class="slide-banner-class " data-src style="display: block" >
       	<img src="img/dryfruitbanner2.jpg"  >
         
    </div>
  
       
       
       
       
   </div>
     <section id="features" >
    <div class="row">
      <div class="col-lg-4 feature-box">
          <i class="fas fa-check-circle fa-4x"></i>
        <h3>Genuine Products.</h3>
        
      </div>
      <div class="col-lg-4 feature-box">
          <i class="fas fa-truck fa-4x"></i>
        <h3>Fast Delivery.</h3>
        
      </div>
      <div class="col-lg-4 feature-box">
        <i class="fas fa-money-bill fa-4x"></i>
        <h3>Best Affordable Price.</h3>
        
      </div>
    </div>
  </section>
   
                 <!--category section-->
      
          <div class="container-fluid">
              <div class="row mt-4">
                  <!--first col-->
                  <div class="col-md-3 col-sm-5 col-5">
                      <!--categories-->
                      <div class=" text-center list-group" >
                           <a href="#" onclick="getProducts(0)" class="list-group-item list-group-item-action active" style="background-image:url('img/login-background.jpg');background-size: cover; "><i class="fa fa-sliders fa-2x hamburger"></i>
                               <h2 style="display: inline-block"> Categories</h2>
  </a>
                           <%
              ProductDao pd=new ProductDao(ConnectionProvider.getConnection());
              ArrayList<Category> list1=pd.getAllCategories();
              for(Category cc:list1)
              {
          %>
          <a href="#" onclick="getProducts(<%=cc.getCid()%>)" class="list-group-item list-group-item-action title " ><%=cc.getName()%></a>
  
  <%
              }
          %>
</div>
                  </div>
                  <!--second col-->
                  <div class="col-md-9 col-sm-7 col-7">
                      
                      <!--products-->
                      <div class="container-fluid" id="products">

                      </div>
                  </div>
                  
          
   
          </div>
          </div>



      
      <!--end of category section-->
       
   
   
   
   
   
   
        
        <!--javascripts-->
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>       
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	
	<script src="js/myjs.js" type="text/javascript"></script>
<script>
    function getProducts(catId){
       $.ajax({
        url:"load_product.jsp",
        data:{cid:catId},
        success: function (data) {
        
        $('#products').html(data)
        
        
    }
       })  
    
    }
    $(document).ready(function(){
       getProducts(0)
    })
    
</script>
<%@include file="cartModal.jsp" %>
    </body>
</html>
