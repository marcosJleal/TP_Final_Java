<%@page import="Entidad.Cuentas"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cuentas</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
 	
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<Style>
 	.table
 	{
 		width: 100%;
    max-width: 50%;
    padding: 15px;
    margin: auto;
 	}
 	.fila{
 	width: 30%;
 	}
 	.boton{
 	width: 100%;
 	}
 	   
</Style>
<title>Listado de cuentas</title>
</head>
<body id="Fondo">
<jsp:include page="MenuCliente.html"></jsp:include>
<h1 class="mt-3 text-center mb-4 text-info text-info">Cuentas</h1>
<div class="container">
<%
ArrayList<Cuentas> lista = new ArrayList<Cuentas>();
lista = (ArrayList<Cuentas>)request.getAttribute("listaCuenta");
%>
<table class="table ">
  <thead class="thead-light">
    <tr>

      <th scope="col">Tipo de cuenta</th>
      <th scope="col">Monto</th>
      <th scope="col">fecha de ultimo movimiento</th>
      <th class="fila" scope="col"></th>
    </tr>
  </thead>
  <tbody class="text-light">
    <% if(lista!=null){
  		 for(Cuentas e : lista)
		{
%>
    <tr class="text-light">
      <form action="Controlador" method="get">
      <td><%=e.getIdtipo()%><input type="hidden" name="idUsuario" value="<%=e.getIdPersona()%>"></td>
      <td><%=e.getSaldo()%></td>
      <td><%=e.getMovimiento().getFecha()%></td>
      <td><button type="submit" class="btn btn-primary" name="btnDetalle_Cuenta" >Ver Detalle</button></td> 
    </form>
    </tr>
      <%  } 
  		 }%>	
  </tbody>
</table>
</div>
</body>
</html>