<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Empleados</title>
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
						<h3>Voluntarios</h3>
						<p>Los voluntarios son individuos apasionados por la
							conservación de la vida silvestre que ofrecen su tiempo y energía
							de forma gratuita. Los voluntarios pueden desempeñar una amplia
							variedad de tareas, como asistir en la alimentación y cuidado de
							los animales, ayudar en la limpieza de los recintos, participar
							en programas educativos y ofrecer apoyo administrativo.</p>
						<p>Su dedicación y entusiasmo son vitales para el
							funcionamiento del zoológico y contribuyen en gran medida a la
							educación y concientización del público sobre la importancia de
							la conservación.</p>
					</div>
				</div>
				<div
					class="flex-1 flex w-full h-full justify-center lg:justify-start lg:!justify-end">
					<div
						class="flex-shrink-0 relative mx-auto w-full aspect-w-16 aspect-h-9">
						<span
							style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
							alt="We provide high quality services"
							src="https://i.imgur.com/xooXpVr.png" decoding="async"
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
						<h3>Ayudantes</h3>
						<p>Los ayudantes son miembros del personal que brindan
							asistencia y apoyo en las operaciones diarias del zoológico. Su
							labor puede incluir tareas como la limpieza de los recintos, el
							suministro de alimentos a los animales, la observación y registro
							de comportamientos, el mantenimiento de las instalaciones y la
							asistencia en la atención veterinaria básica.</p>
						<p>Los ayudantes desempeñan un papel esencial al garantizar
							que los animales reciban el cuidado adecuado y que el zoológico
							funcione de manera eficiente.</p>
					</div>
				</div>
				<div
					class="flex-1 flex w-full h-full justify-center lg:justify-start lg:!justify-end">
					<div
						class="flex-shrink-0 relative mx-auto w-full aspect-w-16 aspect-h-9">
						<span
							style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
							alt="We provide high quality services"
							src="https://i.imgur.com/KBUAd5l.jpg" decoding="async"
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
						<h3>Guias</h3>
						<p>Los guías en un zoológico desempeñan un papel fundamental
							en la experiencia de los visitantes al proporcionar información
							valiosa sobre los animales y los aspectos educativos y de
							conservación del zoológico.</p>
						<p>Estos profesionales altamente capacitados tienen el
							conocimiento y la habilidad para brindar visitas guiadas y
							ofrecer una narrativa interesante y educativa sobre los animales,
							su hábitat, su comportamiento y su conservación.</p>
					</div>
				</div>
				<div
					class="flex-1 flex w-full h-full justify-center lg:justify-start lg:!justify-end">
					<div
						class="flex-shrink-0 relative mx-auto w-full aspect-w-16 aspect-h-9">
						<span
							style="box-sizing: border-box; display: block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: absolute; inset: 0px;"><img
							alt="We provide high quality services"
							src="https://i.imgur.com/VN8ga3f.jpg" decoding="async"
							data-nimg="fill" class=""
							style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%; object-fit: cover; object-position: center center;"></span>
					</div>
				</div>
			</div>
		</div>
	</section>


	<table id="empleados" class="table table-striped table-bordered"
		style="width: 100%">
		<thead>
			<tr>
				<th>ID</th>
				<th>Nombre</th>
				<th>Puesto</th>
				<th>Salario</th>
				<th>Recinto ID</th>
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
				rs = stmt.executeQuery("SELECT * FROM empleados");

				while (rs.next()) {
					int id = rs.getInt("id");
					String nombre = rs.getString("nombre");
					String puesto = rs.getString("puesto");
					double salario = rs.getDouble("salario");
					int recinto_id = rs.getInt("recinto_id");
			%>
			<tr>
				<td><%=id%></td>
				<td><%=nombre%></td>
				<td><%=puesto%></td>
				<td><%=salario%></td>
				<td><%=recinto_id%></td>
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
	<button onclick="location.href='/Proyecto_conjunto_1º_CFGS/ExportEmpleadosXmlServlet'"
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
			$('#empleados').DataTable();
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