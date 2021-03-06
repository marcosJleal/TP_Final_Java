<%@page import="Entidad.Prestamos"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
 	
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

<Style>
 	.Alta{
 	width: 100%;
    max-width: 600px;
    padding: 15px;
    margin: auto;
 	    }
 	 .crear{
 	  	width: 25%;
 	 }
 	 #inputMonto{
 	 	width: 50%;
 	 	margin: auto;
 	 	
 	 }
 	 #lblMonto{
 	     display: block;
    	 text-align: center;
	 } 	 
 	    #Fondo{
        background-color:#020648;
     }
    
     #tituloEspacio{
    	margin-bottom:50px;
     }
</Style>

<title>Prestamo</title>
</head>
<body ID="Fondo">
<jsp:include page="MenuAdmin.html"></jsp:include>
<div class="container">
<h1 class="mt-3 text-center mb-1 text-info" ID="tituloEspacio">Prestamo cliente</h1>
<form class="Alta" action="ServletPrestamos" method="get">

 <%
  Prestamos prestamo = new Prestamos();
  prestamo = (Prestamos) request.getAttribute("Prestamo");
  
  %>
  <div class="form-row">
           <div class="form-group col-md-6">
      <label for="inputState" class="text-light">Cliente</label>
      <input type="text" class="form-control"value="<%=prestamo.getCliente().getNombre()+" "+prestamo.getCliente().getApellido()%>" id="inputCliente">
      <input type="hidden" name="idPrestamo" value="<%=prestamo.getIdPrestamo()%>"></td>
    </div>
    <div class="form-group col-md-6">
      <label for="inputState" class="text-light">Cuenta</label>
      <input type="text" class="form-control"value="<%=prestamo.getCuenta().getNumeroCuenta()%>" id="inputCuenta">
    </div>
  </div>
    <div class="form-row">
           <div class="form-group col-md-6">
      <label for="inputState" class="text-light">Cuotas</label>
      <input type="text" class="form-control"value="<%=prestamo.getCantidadCuotas()%>" id="inputCliente">
    </div>
    <div class="form-group col-md-6">
      <label for="inputState" class="text-light">Monto solicitado</label>
      <input type="text" class="form-control"value="<%=prestamo.getImportePedido()%>" id="inputCuenta">
    </div>
  </div>

    </div>
	<div class="form-row">
	<div class="form-group col-md-6" style="margin-left:610px;">
  <button type="submit" class="btn btn-success crear " name="btnAprobar">Aprobar</button>
 

  <button type="submit" class="btn btn-danger crear  "name="btnDesaprobar">Desaprobar</button>
 </div>
  </div>
</form>
</div>
</body>
</html>