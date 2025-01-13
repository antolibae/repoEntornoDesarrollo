
<%
String user = (String) session.getAttribute("user");
if (user != null) {
	response.sendRedirect("indexAdmin.jsp");
}
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css">
<link href="css.css" rel="stylesheet" type="text/css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<link rel="icon" href="https://i.imgur.com/BLaY9wG.png" />
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
		<a href="index.jsp" id="title">Zooilogico</a>
	</h1>
	<div class="nav-buttons">
		<button class="button" onclick="window.location.href='animales.jsp'">Animales</button>
		<button class="button" onclick="window.location.href='recintos.jsp'">Recintos</button>
		<button class="button" onclick="window.location.href='empleados.jsp'">Empleados</button>
		<%
		if (user == null) {
		%>
		<button class="button" onclick="window.location.href='login.jsp'">Login</button>
		<%
		} else {
		%>
		<button class="button" onclick="window.location.href='indexAdmin.jsp'">Index
			Admin</button>
		<%
		}
		%>
	</div>


	<section
		style="background-image: url('https://i.imgur.com/4X06FHN.jpeg'); background-size: cover; background-position: center; width: 100vw; height: 50vh; display: flex; justify-content: center; align-items: center;">
		<form action="verificar.jsp" method="post"
			style="display: flex; flex-direction: column; align-items: center; width: 100%; max-width: 500px; margin: 0 auto; color: white; text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.8);">
			<table>
				<tr>
					<td>Usuario:</td>
					<td><input type="text" name="user"
						style="width: 100%; padding: 5px; background-color: rgba(0, 0, 0, 0.5);"></td>
				</tr>
				<tr>
					<td>Contraseña:</td>
					<td><input type="password" name="pass"
						style="width: 100%; padding: 5px; background-color: rgba(0, 0, 0, 0.5);"></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="Login"
						class="button"
						style="padding: 10px 20px; background-color: #f2f2f2; border: none; cursor: pointer;"></td>
				</tr>
			</table>
		</form>
	</section>


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
