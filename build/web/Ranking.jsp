<%-- 
    Document   : Ranking
    Created on : 01-may-2019, 12:29:38
    Author     : alexlin
--%>

<%@page import="tools.Ranking"%>
<%@page import="java.util.List"%>
<%@page import="entities.Sheetmusic"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>Ranking</title>
    </head>
    <body>
        <%
            List<Ranking> ranking = (List<Ranking>) request.getAttribute("ranking");
            if (ranking.size() == 0) {
        %>
        <h2>Nobody has sheets</h2>
        <%
        } else {
        %>
        <table class="table table-striped">
            <tr>
                <th>USER</th>
                <th>NUMBER</th>
            </tr>
            <%
                for (Ranking r : ranking) {
            %>
            <tr>
                <td><%= r.getUsername() %></td>
                <td><%= r.getNumber() %></td>
            </tr>
            <%
                    }
                }
            %>
        </table>
    </body>
</html>
