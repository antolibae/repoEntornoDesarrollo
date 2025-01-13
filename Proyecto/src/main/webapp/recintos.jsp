<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Recintos</title>
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

	<section style="background-color: rgb(255, 255, 255);">
		<div class="container mx-auto py-12 lg:py-14 xl:py-20">
			<div
				class="flex flex-col lg:flex-row w-full gap-10 lg:gap-20 items-start lg:!flex-row-reverse">
				<div class="flex-1 flex flex-col items-center lg:items-start">
					<div class="rich-text-block website-wysiwyg"
						style="color: rgb(0, 0, 0);">
						<h3>Toca Toca</h3>
						<p>La Zona Toca Toca es un área interactiva en la que los
							visitantes tienen la oportunidad de acercarse y tocar a animales
							seleccionados de manera segura. Es un espacio diseñado para
							educar y fomentar el respeto hacia los animales, permitiendo a
							los visitantes tener una experiencia cercana con ellos.</p>
					</div>
				</div>
				<div
					class="flex-1 flex w-full h-full justify-center lg:justify-start lg:!justify-end">
					<div
						class="flex-shrink-0 relative mx-auto w-full aspect-w-16 aspect-h-9">
						<span
							style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
							alt="We provide high quality services"
							src="https://i.imgur.com/hs3BzaG.jpeg" decoding="async"
							data-nimg="fill" class=""
							style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover; object-position: center center;"></span>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section style="background-color: rgb(255, 255, 255);">
		<div class="container mx-auto py-12 lg:py-14 xl:py-20">
			<div
				class="flex flex-col lg:flex-row w-full gap-10 lg:gap-20 items-start lg:!flex-row-reverse">
				<div class="flex-1 flex flex-col items-center lg:items-start">
					<div class="rich-text-block website-wysiwyg"
						style="color: rgb(0, 0, 0);">
						<h3>En Construcción</h3>
						<p>Las demás areas especiales del zoológico se encuentran
							actualmente en desarrollo y no están abiertas al público.</p>
					</div>
				</div>
				<div
					class="flex-1 flex w-full h-full justify-center lg:justify-start lg:!justify-end">
					<div
						class="flex-shrink-0 relative mx-auto w-full aspect-w-16 aspect-h-9">
						<span
							style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
							alt="We provide high quality services"
							src="https://i.imgur.com/3odM2tU.jpeg" decoding="async"
							data-nimg="fill" class=""
							style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover; object-position: center center;"></span>
					</div>
				</div>
			</div>
		</div>
	</section>

	<table id="recintos" class="table table-striped table-bordered"
		style="width: 100%">
		<thead>
			<tr>
				<th>ID</th>
				<th>Nombre</th>
				<th>Ubicacion</th>
				<th>Capacidad</th>
			</tr>
		</thead>

		<tbody>
			<%
			Connection conn = null;
			Statement stmt = null;
			ResultSet rs = null;
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				conn = DriverManager.getConnection("jdbc:mysql://localhost/zoologico", "root", "animales");

				stmt = conn.createStatement();
				rs = stmt.executeQuery("SELECT * FROM recintos");

				while (rs.next()) {
					int id = rs.getInt("id");
					String nombre = rs.getString("nombre");
					String ubicacion = rs.getString("ubicacion");
					int capacidad = rs.getInt("capacidad");
			%>
			<tr>
				<td><%=id%></td>
				<td><%=nombre%></td>
				<td><%=ubicacion%></td>
				<td><%=capacidad%></td>
			</tr>
			<%
			}
			} catch (Exception e) {
			e.printStackTrace();
			} finally {
			if (rs != null) {
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			}
			if (stmt != null) {
			try {
				stmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			}
			if (conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			}
			}
			%>
		</tbody>
	</table>
	<button onclick="location.href='/Proyecto_conjunto_1º_CFGS/ExportRecintosXmlServlet'"
		style="border: 2px solid #000; padding: 5px 10px; text-decoration: none; display: inline-block; margin: 4px 2px; cursor: pointer; color: green;">Exportar
		a XML</button>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
	<script
		src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
	<script
		src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js"></script>
	<script>
		$(document).ready(function() {
			$('#recintos').DataTable();
		});
	</script>

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