<!-- Agregamos el prefijo form para el manejo de formularios en JSP-->
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
    <meta charset="UTF-8">
    <!-- Agregamos las librerias de Bootstrap-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">       
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <title>JSP Page</title>
    </head>
    <body>
        <div class="panel panel-primary" style="text-align:center; margin:auto;">
        <h1>Ejemplo de Uso de FORMS en JSTL y JSP</h1>
        <form:form commandName="persona" cssClass="navbar-form ">
            <form:errors path="*" element="div" cssClass="alert alert-danger" />
            <div class="input-group">
                <form:label path="nombre" cssClass="input-group-addon">Nombre Usuario: </form:label>
                <form:input path="nombre" cssClass="form-control" ></form:input>
            </div>            
            <div class="input-group">
               
            </div>
            <br>
            <div class="input-group">
                <form:label path="apellido" cssClass="input-group-addon">Apellido Usuario: </form:label>
                <form:input path="apellido" cssClass="form-control"></form:input>
            </div>
            <div class="input-group">
               
            </div>
            <br>
            <div class="input-group" >
                <form:label path="edad" cssClass="input-group-addon">Edad Usuario:.... </form:label>
                <form:input path="edad" cssClass="form-control"></form:input>
            </div>
            <br>            
            <div class="input-group" >
                <form:label path="correo" cssClass="input-group-addon">Apellido Usuario: </form:label>
                <form:input path="correo" cssClass="form-control"></form:input>
            </div><br>
            <form:button name="Enviar" class="btn btn-primary btn-lg">Enviar</form:button>
            <a class="btn btn-primary btn-lg" href="index.htm" role="button" >Regresar...</a>
         </form:form>
            </div>
    </body>
</html>
