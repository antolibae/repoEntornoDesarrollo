<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
session.invalidate(); // Invalida la sesi�n y desvincula los objetos enlazados a ella
response.sendRedirect("index.jsp"); // Redirige al usuario a la p�gina de inicio de sesi�n
%>
