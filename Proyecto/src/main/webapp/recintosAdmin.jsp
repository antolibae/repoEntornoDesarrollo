
<%
String user = (String) session.getAttribute("user");
if (user == null) {
	response.sendRedirect("login.jsp");
}
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.zoologico.dao.RecintoDao"%>
<%@page import="com.zoologico.bean.Recinto"%>
<%@page import="com.zoologico.bean.Animal"%>

<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Recintos Admin</title>
<link href="css.css" rel="stylesheet" type="text/css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<link rel="icon" href="https://i.imgur.com/BLaY9wG.png" />
<script>
	function updateForm() {
		var action = document.getElementById("action").value;
		document.getElementById("id").style.display = (action == "actualizar" || action == "eliminar") ? ""
				: "none";
		document.getElementById("especie").style.display = (action != "eliminar") ? ""
				: "none";
		document.getElementById("ubicacion").style.display = (action != "eliminar") ? ""
				: "none";
		document.getElementById("capacidad").style.display = (action != "eliminar") ? ""
				: "none";
	}
	window.onload = updateForm;
</script>
</head>

<body>
	<h1>
		<div id="social">
			<a href="https://twitter.com/zooilogico_es"><i
				class="fab fa-twitter"></i></a> <a
				href="https://www.instagram.com/zooilogico_es"><i
				class="fab fa-instagram"></i></a> <a
				href="https://www.facebook.com/zooilogico_es"><i
				class="fab fa-facebook"></i></a>
		</div>
		<a href="index.jsp" id="title">Zooilogico Admin</a>
	</h1>
	<div class="nav-buttons">
		<button class="button"
			onclick="window.location.href='animalesAdmin.jsp'">Animales
			Admin</button>
		<button class="button"
			onclick="window.location.href='recintosAdmin.jsp'">Recintos
			Admin</button>
		<button class="button"
			onclick="window.location.href='empleadosAdmin.jsp'">Empleados
			Admin</button>
		<button class="button" onclick="window.location.href='index.jsp'">Index
			Normal</button>
	</div>

	<section style="background-color: rgb(243, 244, 246);">
		<div class="container mx-auto py-12 lg:py-14 xl:py-20">
			<div
				class="rich-text-block website-wysiwyg w-full max-w-5xl text-center mx-auto"
				style="color: rgb(0, 0, 0); font-weight: bold;">
				<h3>RECINTOS ADMIN</h3>
			</div>
		</div>
	</section>

	<!-- EDITAR -->
	<section
		style="background-image: url('https://i.imgur.com/4X06FHN.jpeg'); background-size: cover; background-position: center; width: 100vw; height: 50vh; display: flex; justify-content: center; align-items: center;">
		<form action="" method="post" onsubmit="updateForm()"
			style="display: flex; flex-direction: column; align-items: center; width: 100%; max-width: 500px; margin: 0 auto; color: white; text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.8);">
			<table style="width: 100%; margin-top: 20px;">
				<tr id="id">
					<td>ID:</td>
					<td><input type="number" name="id"
						style="width: 100%; padding: 5px; background-color: rgba(0, 0, 0, 0.5);"></td>
				</tr>
				<tr id="especie">
					<td>Especie:</td>
					<td><input type="text" name="especie"
						style="width: 100%; padding: 5px; background-color: rgba(0, 0, 0, 0.5);"></td>
				</tr>
				<tr id="ubicacion">
					<td>Ubicacion:</td>
					<td><select name="ubicacion"
						style="width: 100%; padding: 5px; background-color: rgba(0, 0, 0, 0.5);">
							<option value="">Selecciona</option>
							<option value="Norte">Norte</option>
							<option value="Sur">Sur</option>
							<option value="Este">Este</option>
							<option value="Oeste">Oeste</option>
					</select></td>
				</tr>
				<tr id="capacidad">
					<td>Capacidad:</td>
					<td><input type="number" name="capacidad"
						style="width: 100%; padding: 5px; background-color: rgba(0, 0, 0, 0.5);"></td>
				</tr>

				<!-- Elegir la acción a realizar -->
				<tr>
					<td>Accion:</td>
					<td><select name="action" id="action" onchange="updateForm()"
						style="width: 100%; padding: 5px; background-color: rgba(0, 0, 0, 0.5);">
							<option value="">Selecciona</option>
							<option value="agregar">Agregar</option>
							<option value="actualizar">Actualizar</option>
							<option value="eliminar">Eliminar</option>
					</select></td>
				</tr>

				<tr>
					<td colspan="2"><input type="submit" value="Submit"
						class="button"
						style="padding: 10px 20px; background-color: #f2f2f2; border: none; cursor: pointer;"></td>
				</tr>

			</table>
		</form>
	</section>



	<%
	String action = request.getParameter("action");
	String errorMessage = "";

	if (request.getMethod().equals("POST") && action != null && !action.isEmpty()) {
		Recinto recinto = new Recinto();
		Animal a = new Animal();
		recinto.setUbicacion(request.getParameter("ubicacion"));
		String capacidadStr = request.getParameter("capacidad");
		a.setEspecie(request.getParameter("especie"));
		recinto.setEspecie(a);
		if (capacidadStr != null && !capacidadStr.isEmpty()) {
			recinto.setCapacidad(Integer.parseInt(capacidadStr));
		}

		switch (action) {
		case "agregar":
			if (RecintoDao.guardarRecinto(recinto) && !recinto.getUbicacion().equals("")) {
		RecintoDao.agregar(recinto);
		response.sendRedirect("recintos.jsp");
			} else {
		errorMessage = "Error: No se pudo agregar el recinto.";
			}
			break;
		case "actualizar":
			recinto.setId(Integer.parseInt(request.getParameter("id")));
			if (RecintoDao.actualizarRecinto(recinto) && !recinto.getUbicacion().equals("")) {
		RecintoDao.actualizar(recinto);
		response.sendRedirect("recintos.jsp");
			} else {
		errorMessage = "Error: No se pudo actualizar el recinto.";
			}
			break;
		case "eliminar":
			recinto.setId(Integer.parseInt(request.getParameter("id")));
			if (RecintoDao.borrarRecinto(recinto)) {
		RecintoDao.eliminar(recinto);
		response.sendRedirect("recintos.jsp");
			} else {
		errorMessage = "Error: No se pudo eliminar el recinto.";
			}
			break;
		}
	}

	request.setAttribute("errorMessage", errorMessage);
	if (errorMessage != null && !errorMessage.isEmpty()) {
	%>
	<script>
	    alert('<%=errorMessage%>
		');
	</script>
	<%
	}
	%>

	<!-- PARA -->
	<footer class="flex-1 h-full"
		style="background-color: rgb(50, 58, 66); color: rgb(255, 255, 255);">
		<div class="container mx-auto py-12 lg:py-14 xl:py-20">
			<div
				class="flex flex-col lg:flex-row items-start lg:justify-between gap-12">
				<div class="flex flex-col gap-6">
					<h3 class="heading-medium xl:heading-small"
						style="color: rgb(255, 255, 255); font-family: var(--head-fontFamily); font-weight: var(--head-fontWeight);">Zooilogico</h3>
				</div>
				<div class="flex flex-col gap-12 lg:gap-6">
					<div
						class="flex flex-col lg:flex-row gap-12 lg:items-center lg:justify-end">
						<ul
							class="flex flex-col lg:flex-row items-start lg:items-center flex-wrap gap-6"
							style="color: rgb(255, 255, 255);">
							<li class="home-link inline-flex items-center gap-2 border-b-2"
								style="border-color: rgb(255, 255, 255);"><span
								class="block py-1.5 body-normal whitespace-nowrap"
								onclick="window.location.href='logout.jsp'">LogOut</span></li>
						</ul>
						<ul class="flex items-center gap-x-4 gap-y-2 flex-wrap">
							<li><svg xmlns="http://www.w3.org/2000/svg"
									fill="currentColor" viewBox="0 0 24 24" width="24" height="24"
									class="icon w-8 h-8" aria-hidden="true"
									style="color: rgb(255, 255, 255);"> <a
										href="https://twitter.com/zooilogico_es"><i
										class="fab fa-twitter"></i></a> </svg></li>
							<li><svg xmlns="http://www.w3.org/2000/svg"
									fill="currentColor" viewBox="0 0 24 24" width="24" height="24"
									class="icon w-8 h-8" aria-hidden="true"
									style="color: rgb(255, 255, 255);"> <a
										href="https://www.instagram.com/zooilogico_es"><i
										class="fab fa-instagram"></i></a> </svg></li>
							<li><svg xmlns="http://www.w3.org/2000/svg"
									fill="currentColor" viewBox="0 0 24 24" width="24" height="24"
									class="icon w-8 h-8" aria-hidden="true"
									style="color: rgb(255, 255, 255);"> <a
										href="https://www.facebook.com/zooilogico_es"><i
										class="fab fa-facebook"></i></a> </svg></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</footer>
</body>
</html>