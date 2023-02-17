
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>New User</title>
        <%@include file="components/common_css_js.jsp" %>
    </head>
    <body>
        <%@include file="components/navbar.jsp" %>
        
        <div class="container-fluid">
            <div class="row">
            <div class="col-md-4 offset-md-4">
                
                
                <div class="card">
                    
                    <%@include file="components/message.jsp" %>
                    
                    <div class="card-body">
                            <img src="img/bags.png" height="100" width="100" class="rounded mx-auto d-block" alt="shopping">   
                    <h3 class="text-center">Sign Up Here</h3>
                
                    <form action="ServletRegister" method="post">
          
                        <div class="form-group">
                           <label for="name">User Name</label>
                           <input name="user_name" type="text" class="form-control" id="name" aria-describedby="emailHelp" placeholder="Enter here">
                       </div>

                       <div class="form-group">
                           <label for="email">User Email</label>
                           <input name="user_email" type="email" class="form-control" id="email" aria-describedby="emailHelp" placeholder="Enter here">
                       </div>

                       <div class="form-group">
                           <label for="password">User Password</label>
                           <input name="user_password" type="password" class="form-control" id="password" aria-describedby="emailHelp" placeholder="Enter here">
                       </div>


                       <div class="form-group">
                           <label for="phone">User phone</label>
                           <input name="user_phone" type="number" class="form-control" id="phone" aria-describedby="emailHelp" placeholder="Enter here">
                       </div>

                       <div class="form-group">
                           <label for="address">User Address</label>
                           <textarea name="user_address" style= "height:150px;" class="form-control" placeholder="Enter Your Address"></textarea>
                       </div>

                       <div class="container text-center">
                           <button class ="btn btn-outline-success ">Register</button>
                           <button class ="btn btn-outline-warning ">Reset</button>

                       </div>

                    </form>
                        
                    </div>
                    
                </div>
                
            </div>
            
        </div>
        </div>
        
    </body>
</html>
