package com.zoologico.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import com.zoologico.dao.RecintoDao;

@WebServlet("/ExportRecintosXmlServlet")
public class ExportRecintosXmlServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/xml");
		PrintWriter out = response.getWriter();
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = RecintoDao.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery("SELECT * FROM recintos");

			out.println("<Recintos>");
			while (rs.next()) {
				out.println("<Recinto>");
				out.println("<id>" + rs.getInt("id") + "</id>");
				out.println("<nombre>" + rs.getString("nombre") + "</nombre>");
				out.println("<ubicacion>" + rs.getString("ubicacion") + "</ubicacion>");
				out.println("</Recinto>");
			}
			out.println("</Recintos>");
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
	}
}
