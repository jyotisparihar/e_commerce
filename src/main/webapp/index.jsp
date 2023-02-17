
<%@page import="com.learn.mycart.helper.Helper"%>
<%@page import="com.learn.mycart.entities.Category"%>
<%@page import="com.learn.mycart.dao.CategoryDao"%>
<%@page import="java.util.List"%>
<%@page import="com.learn.mycart.entities.Product"%>
<%@page import="com.learn.mycart.dao.ProductDao"%>
<%@page import="com.learn.mycart.helper.FactoryProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Cart-Home</title>
        <%@include file="components/common_css_js.jsp" %>
        
    </head>
    <body>
        <%@include file="components/navbar.jsp" %>
        <div class="row mt-3 mx-2">
            
            <%
            ProductDao dao = new ProductDao(FactoryProvider.getFactory()); 
            List<Product> list = dao.getAllProducts();
            
            CategoryDao cdao = new CategoryDao(FactoryProvider.getFactory());
            List<Category> clist = cdao.getCategories();
            %>
            
            
            
            <!--show categories-->
            <div class="col-md-2">
                
                <div class="list-group mt-4">
                    
                    <a href="#" class="list-group-item list-group-item-action active">
                        All Products
                    </a>
                        
                <% 
                for(Category c:clist){
                
                %>
                <a href="#" class="list-group-item list-group-item-action"><%= c.getCategoryTitle() %></a>
                
                <%
                    }
                %>
                
                </div>
            </div>
            
            <!--show products-->
            <div class="col-md-8">
               
                <!--row-->
                <div class="row mt-4">
                    
                    <!--col:12-->
                    <div class="col-md-12">
                        
                        <div class="card-columns">
                            
                            <!--traversing products-->
                            <% 
                                for(Product p:list){
                            %>
                            
                            <div class="card">
                                
                                <div class="container text-center">
                                    <img class="card-img-top m-2" style="max-height: 200px; max-width: 100%" src="img/products/<%= p.getpPhoto() %>" alt="...">
                                </div>                               
                                <div class="card-body">
                                    
                                    <h5 class="card-title"> <%= p.getpName() %></h5>
                                    <p class="card-text">
                                        <%= Helper.get10Words(p.getpDesc()) %>
                                    </p>
                                </div>
                                    
                                    <div class="card-footer">
                                        <button class="btn custom-bg text-white">Add to Cart</button>
                                        <button class="btn btn-outline-primary"> &#8377; <%= p.getpPrice() %></button>
                                    </div>
                            </div>
                            
                            <% } %>
                            
                        </div>
                        
                        
                    </div>
                </div>
                
            </div>
            
            
        </div>