package com.zoologico.dao;

import java.sql.*;
import com.zoologico.bean.Empleado;

public class EmpleadoDao {

	public static Connection getConnection() {
		Connection con = null;
		try {
			// Carga el contrlador
			Class.forName("com.mysql.cj.jdbc.Driver");
			// Conectar con la base de datos
			con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/zoologico", "root", "animales");
		} catch (Exception e) {
			System.out.println("ERROR: Imposible conectarse " + e);
		}
		return con;
	}

	public static int guardar(Empleado e) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con
					.prepareStatement("INSERT INTO Empleados(nombre,puesto,salario,recinto_id) VALUES(?, ?, ?, ?)");
			ps.setString(1, e.getNombre());
			ps.setString(2, e.getPuesto());
			ps.setDouble(3, e.getSalario());
			ps.setInt(4, e.getRecintoId());
			status = ps.executeUpdate();
		} catch (Exception ex) {
			System.out.println("ERROR: Imposible conectarse " + e);
		}
		return status;
	}

	public static int actualizar(Empleado e) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con
					.prepareStatement("UPDATE Empleados SET nombre=?,puesto=?,salario=?,recinto_id=? WHERE id=?");
			ps.setString(1, e.getNombre());
			ps.setString(2, e.getPuesto());
			ps.setDouble(3, e.getSalario());
			ps.setInt(4, e.getRecintoId());
			ps.setInt(5, e.getId());
			status = ps.executeUpdate();
		} catch (Exception ex) {
			System.out.println("ERROR: Imposible conectarse " + e);
		}
		return status;
	}

	public static int eliminar(Empleado e) {
	    int status = 0;
	    try {
	        Connection con = getConnection();
	        PreparedStatement ps = con.prepareStatement("DELETE FROM Empleados WHERE id=?");
	        ps.setInt(1, e.getId());
	        status = ps.executeUpdate();
	    } catch (Exception ex) {
	        System.out.println("ERROR: Imposible conectarse " + ex.getMessage());
	    }

	    return status;
	}

	public static boolean actualizarEmpleado(Empleado e) {
		int resultado = -1;
		try {
			Connection con = getConnection();
			CallableStatement stmt = con.prepareCall("{CALL comprobarEmpleadoActualizar(?, ?, ?, ?, ?, ?)}");
			stmt.setString(1, e.getNombre());
			stmt.setString(2, e.getPuesto());
			stmt.setDouble(3, e.getSalario());
			stmt.setDouble(4, e.getId());
			stmt.setInt(5, e.getRecintoId());
			stmt.registerOutParameter(6, java.sql.Types.INTEGER);

			stmt.execute();

			resultado = stmt.getInt(6);
		} catch (SQLException ex) {
			System.out.println("ERROR: Imposible conectarse " + ex.getMessage());
		}
		return resultado == 1;
	}

	public static boolean eliminarEmpleado(Empleado e) {
	    int resultado = -1;
	    try {
	        Connection con = getConnection();
	        CallableStatement stmt = con.prepareCall("{CALL comprobarEmpleadoEliminar(?, ?)}");
	        stmt.setInt(1, e.getRecintoId());
	        stmt.registerOutParameter(2, java.sql.Types.INTEGER);
	        
	        stmt.execute();
	        
	        resultado = stmt.getInt(2);
	    } catch (SQLException ex) {
	        ex.printStackTrace();
	    }
	    return resultado == 1;
	}


	public static boolean guardarEmpleado(Empleado e) {
		int resultado = -1;
		try {
			Connection con = getConnection();
			CallableStatement stmt = con.prepareCall("{CALL comprobarEmpleadoGuardar(?, ?, ?)}");
			stmt.setDouble(1, e.getSalario());
			stmt.setInt(2, e.getRecintoId()); // Aquí agregamos el ID del recinto del empleado
			stmt.registerOutParameter(3, java.sql.Types.INTEGER);

			stmt.execute();

			resultado = stmt.getInt(3);
		} catch (SQLException ex) {
			System.out.println("ERROR: Imposible conectarse " + ex.getMessage());
		}
		return resultado == 1;
	}


}