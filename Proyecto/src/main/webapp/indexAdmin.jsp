
<%
String user = (String) session.getAttribute("user");
if (user == null) {
	response.sendRedirect("login.jsp");
}
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Zooilogico Admin</title>
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

	<!-- EDITAR -->

	<section
		class="relative flex items-center justify-center overflow-hidden min-h-120 flex-none"
		style="background-image: url(&quot;https://a-z-animals.com/media/2022/09/shutterstock_388085161.jpg&quot;); background-position: center center; background-size: cover;">
		<div class="w-full h-full absolute top-0 left-0"
			style="background-color: rgba(0, 0, 0, 0.7);"></div>
		<div
			class="relative container mx-auto px-6 z-10 py-12 lg:py-32 xl:py-40">
			<div class="max-w-3xl text-left ml-0 mr-auto">
				<h2 class="heading-xlarge mb-6 text-left"
					style="color: rgb(255, 255, 255); font-family: var(--head-fontFamily); font-weight: var(--head-fontWeight);">Administra
					Zooilogico</h2>
				<p class="body-large"
					style="color: rgb(255, 255, 255); scroll-behavior: smooth; font-family: var(--body-fontFamily); font-weight: var(--body-fontWeight);">El
					Aquí en el Zoológico de Sevilla, te ofrecemos un completo conjunto
					de herramientas y funciones para administrar y mantener nuestro
					parque de animales. Como administrador, tendrás la capacidad de
					modificar, agregar y eliminar recintos, animales y más.</p>
			</div>
		</div>
	</section>

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

