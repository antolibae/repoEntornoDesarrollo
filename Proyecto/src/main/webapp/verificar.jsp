<%@page import="java.sql.*"%>

<%
String user = request.getParameter("user");
String pass = request.getParameter("pass");

Connection con = null;
try {
	Class.forName("com.mysql.jdbc.Driver");
	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Zoologico", user, pass);
	session.setAttribute("user", user); // guardamos el usuario en la sesión
	response.sendRedirect("indexAdmin.jsp");
} catch (Exception e) {
	out.print("ERROR: Credenciales no validas");
	request.getRequestDispatcher("login.jsp").include(request, response);
} finally {
	if (con != null) {
		try {
	con.close();
		} catch (Exception e) {
	System.out.println("ERROR: Imposible conectarse " + e);
		}
	}
}
%>