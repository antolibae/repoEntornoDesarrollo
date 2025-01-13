<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Zooilogico</title>
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
		String user = (String) session.getAttribute("user");
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

	<!-- EDITAR -->
	<section
		class="relative flex items-center justify-center overflow-hidden min-h-120 flex-none"
		style="background-image: url(&quot;https://images.unsplash.com/photo-1593754128697-f76e0dd22bb1?crop=entropy&amp;cs=tinysrgb&amp;fit=max&amp;fm=jpg&amp;ixid=M3wyNjI5NjF8MHwxfHNlYXJjaHwyMHx8Wm9vfGVufDB8fHx8MTY4NjIxNTYwNnww&amp;ixlib=rb-4.0.3&amp;q=80&amp;w=1080&quot;); background-position: center center; background-size: cover;">
		<div class="w-full h-full absolute top-0 left-0"
			style="background-color: rgba(0, 0, 0, 0.7);"></div>
		<div
			class="relative container mx-auto px-6 z-10 py-12 lg:py-32 xl:py-40">
			<div class="max-w-3xl text-left ml-0 mr-auto">
				<h2 class="heading-xlarge mb-6 text-left"
					style="color: rgb(255, 255, 255); font-family: var(--head-fontFamily); font-weight: var(--head-fontWeight);">Explora
					Zooilogico</h2>
				<p class="body-large"
					style="color: rgb(255, 255, 255); scroll-behavior: smooth; font-family: var(--body-fontFamily); font-weight: var(--body-fontWeight);">El
					Zoológico de Sevilla es un parque de animales donde se pueden ver y
					disfrutar de los animales en su hábitat natural. Cuenta con
					instalaciones modernas, una amplia variedad de animales, y una
					experiencia interactiva única. Ven y descubre la magia de la
					naturaleza.</p>
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
