<%-- 
    Document   : UserSheetList
    Created on : 26-abr-2019, 9:36:04
    Author     : alexlin
--%>

<%@page import="entities.User"%>
<%@page import="beans.SessionBean"%>
<%@page import="java.util.List"%>
<%@page import="entities.Sheetmusic"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>Your Sheets</title>
    </head>
    <body>
        <%

            List<Sheetmusic> sheets = (List<Sheetmusic>) request.getAttribute("userSheets");
            if (sheets.size() == 0) {
        %>
        <div class="alert alert-info">
            <strong>Ohh..! You don't have music sheets</strong>
        </div>
        <%
        } else {
        %>
        <table class="table table-striped">
            <tr>
                <th>ID</th>
                <th>TITLE</th>
                <th>INSTRUMENT</th>
                <th>GENRE</th>
                <th>DIFFICULTY</th>
                <th>ARTIST</th>
                <th>PRINTED</th>
                <th>OWNER</th>
            </tr>
            <%
                for (Sheetmusic sm : sheets) {
            %>
            <tr>
                <td><%= sm.getIdsheetmusic()%></td>
                <td><%= sm.getTitle()%></td>
                <td><%= sm.getInstrument()%></td>
                <td><%= sm.getGenre()%></td>
                <td><%= sm.getDifficulty()%></td>
                <td><%= sm.getArtist()%></td>
                <td><%= sm.getPrinted()%></td>
                <td><%= sm.getOwner()%></td>
            </tr>
            <%
                    }
                }
            %>
        </table>
    </body>
</html>
