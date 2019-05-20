<%-- 
    Document   : ModifyPage
    Created on : 30-abr-2019, 16:21:10
    Author     : alexlin
--%>

<%@page import="entities.Sheetmusic"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modify</title>
        <link rel="stylesheet" href="https://unpkg.com/bootstrap-material-design@4.1.1/dist/css/bootstrap-material-design.min.css" integrity="sha384-wXznGJNEXNG1NFsbm0ugrLFMQPWswR3lds2VeinahP8N0zJw9VWSopbjv2x7WCvX" crossorigin="anonymous">    
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://unpkg.com/popper.js@1.12.6/dist/umd/popper.js" integrity="sha384-fA23ZRQ3G/J53mElWqVJEGJzU0sTs+SvzG8fXVWP+kJQ1lwFAOkcUOysnlKJC33U" crossorigin="anonymous"></script>
        <script src="https://unpkg.com/bootstrap-material-design@4.1.1/dist/js/bootstrap-material-design.js" integrity="sha384-CauSuKpEqAFajSpkdjv3z9t8E7RlpJ1UP0lKM/+NdtSarroVKu069AlsRPKkFBz9" crossorigin="anonymous"></script>
        <script>$(document).ready(function () {
                $('body').bootstrapMaterialDesign();
            });</script>
    </head>
    <body>
        <%
            Sheetmusic sm = (Sheetmusic) request.getAttribute("sheetForModify");
        %>
        
        <form method="POST" action="UpdateServlet" class="border border-light p-5 mb-4">
            <div class="form-group mb-4">
                <label for="idSheet" class="bmd-label-floating" hidden="true"></label>
                <input type="text" class="form-control" id="idSheet" name="id" required="" value="<%= sm.getIdsheetmusic()%>" readonly="true">
            </div>
            <div class="form-group mb-4">
                <label for="title" class="bmd-label-floating">Title</label>
                <input type="text" class="form-control" id="title" name="title" value="<%= sm.getTitle()%>" required="" readonly="true">
            </div>
            <div class="form-group mb-4">
                <label for="artist" class="bmd-label-floating">Artist</label>
                <input type="text" class="form-control" id="artist" name="artist" value="<%= sm.getArtist()%>" required="" readonly="true">
            </div>
            <div class="form-group mb-4">
                <label for="instrument" class="bmd-label-floating">Favourite Instrument</label>
                <input type="text" class="form-control" id="instrument" name="instrument" value="<%= sm.getInstrument()%>" required="">
            </div>
            <div class="form-group mb-4">
                <label for="genre" class="bmd-label-floating">Artist</label>
                <input type="text" class="form-control" id="genre" name="genre" value="<%= sm.getGenre()%>" required="" readonly="true">
            </div>
            <div class="form-group mb-4">
                <label for="difficulty" class="bmd-label-floating">Difficulty</label>
                <select class="form-control" id="difficulty" name="difficulty" value="<%= sm.getDifficulty()%>" required="">
                    <option>Easy</option>
                    <option>Medium</option>
                    <option>Hard</option>
                </select>
            </div>
            <div class="form-group mb-4">
                <label for="printed" class="bmd-label-floating">Printed</label>
                <select class="form-control" id="printed" name="printed" value="<%= sm.getPrinted()%>" required="">
                    <option value="0">No</option>
                    <option value="1">Yes</option>
                </select>
            </div>
            <input class="btn btn-info btn-block" type="submit" value="Update" name="Update">
        </form>
    </body>
</html>
