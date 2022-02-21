<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">       
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>        
        <title>JSP Forms</title>
    </head>
    <body>
        <h1 style="text-align: center;">JSTL - FORMS</h1>
        <div class="panel panel-primary" style="margin:auto; width:50%;">
            <div class="panel-heading">Resultados de la consulta en JSTL</div>
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>NOMBRE</th>
                        <th>APELLIDO</th>
                        <th>CORREO</th>
                        <th>EDAD</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>
                           <c:out value="${id}" /></td>
                            <td><c:out value="${nombre}" /></td>
                        <td><c:out value="${apellido}" /></td>
                        <td><c:out value="${correo}" /></td>
                        <td><c:out value="${edad}" /></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                </tbody>
            </table>

            <a class="btn btn-primary btn-block" href="index.htm" role="button" >Regresar...</a>
            </div>
        </div>
    </body>
</html>
