<%-- 
    Document   : Register
    Created on : 26-abr-2019, 8:20:40
    Author     : alexlin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://unpkg.com/bootstrap-material-design@4.1.1/dist/css/bootstrap-material-design.min.css" integrity="sha384-wXznGJNEXNG1NFsbm0ugrLFMQPWswR3lds2VeinahP8N0zJw9VWSopbjv2x7WCvX" crossorigin="anonymous">    
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://unpkg.com/popper.js@1.12.6/dist/umd/popper.js" integrity="sha384-fA23ZRQ3G/J53mElWqVJEGJzU0sTs+SvzG8fXVWP+kJQ1lwFAOkcUOysnlKJC33U" crossorigin="anonymous"></script>
        <script src="https://unpkg.com/bootstrap-material-design@4.1.1/dist/js/bootstrap-material-design.js" integrity="sha384-CauSuKpEqAFajSpkdjv3z9t8E7RlpJ1UP0lKM/+NdtSarroVKu069AlsRPKkFBz9" crossorigin="anonymous"></script>
        <script>$(document).ready(function () {
                $('body').bootstrapMaterialDesign();
            });</script>
        <title>Register</title>
    </head>
    <body>
        <form method="POST" action="RegisterServlet" class="border border-light p-5 mb-4">
            <div class="form-group mb-4">
                <label for="username" class="bmd-label-floating">Username</label>
                <input type="text" class="form-control" id="username" name="username" required="">
            </div>
            <div class="form-group mb-4">
                <label for="pass" class="bmd-label-floating">Password</label>
                <input type="password" class="form-control" id="pass" name="password" required="">
            </div>
            <div class="form-group mb-4">
                <label for="verify" class="bmd-label-floating">Verification</label>
                <input type="password" class="form-control" id="verify" name="verification" required="">
            </div>
            <div class="form-group mb-4">
                <label for="instrument" class="bmd-label-floating">Favourite Instrument</label>
                <input type="password" class="form-control" id="instrument" name="instrument" required="">
            </div>
            <input class="btn btn-info btn-block" type="submit" value="Register">
        </form>
    </body>
</html>
