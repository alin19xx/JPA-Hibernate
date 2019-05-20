<%-- 
    Document   : NewSheet
    Created on : 02-may-2019, 10:00:28
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
        <title>New Sheet</title>
    </head>
    <body>
        <form method="POST" action="NewSheetMusic" class="border border-light p-5 mb-4">
            <div class="form-group mb-4">
                <label for="title" class="bmd-label-floating">Title</label>
                <input type="text" class="form-control" id="title" name="title" required="">
            </div>
            <div class="form-group mb-4">
                <label for="artist" class="bmd-label-floating">Artist</label>
                <input type="text" class="form-control" id="artist" name="artist" required="">
            </div>
            <div class="form-group mb-4">
                <label for="instrument" class="bmd-label-floating">Instrument</label>
                <input type="text" class="form-control" id="instrument" name="instrument" required="">
            </div>
            <div class="form-group mb-4">
                <label for="genre" class="bmd-label-floating">Genre</label>
                <input type="text" class="form-control" id="genre" name="genre" required="">
            </div>
            <div class="form-group mb-4">
                <label for="difficulty" class="bmd-label-floating">Example select</label>
                <select class="form-control" id="difficulty" name="difficulty" required="">
                    <option>Easy</option>
                    <option>Medium</option>
                    <option>Hard</option>
                </select>
            </div>
            <div class="form-group mb-4">
                <label for="printed" class="bmd-label-floating">Printed</label>
                <select class="form-control" id="printed" name="printed" required="">
                    <option value="0">No</option>
                    <option value="1">Yes</option>
                </select>
            </div>
            <input class="btn btn-info btn-block" type="submit" value="Insert">
        </form>
    </body>
</html>
