package com.zoologico.dao;

import java.sql.*;

import com.zoologico.bean.Recinto;

public class RecintoDao {

	public static Connection getConnection() {
		Connection con = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/zoologico", "root", "animales");
		} catch (Exception e) {
			System.out.println("ERROR: Imposible conectarse " + e);
		}
		return con;
	}

	public static int agregar(Recinto r) {
	    int status = 0;
	    try {
	        Connection con = getConnection();
	        PreparedStatement ps = con
	                .prepareStatement("INSERT INTO Recintos(ubicacion,capacidad,especie) VALUES(?,?,?)");
	        ps.setString(1, r.getUbicacion());
	        ps.setInt(2, r.getCapacidad());
	        ps.setString(3, r.getEspecie());
	        status = ps.executeUpdate();

	    } catch (Exception e) {
	        System.out.println("ERROR: Imposible conectarse " + e);
	    }
	    return status;
	}


	public static int actualizar(Recinto r) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con
					.prepareStatement("UPDATE Recintos SET especie=?,ubicacion=?,capacidad=? WHERE id=?");
			ps.setString(1, r.getEspecie());
			ps.setString(2, r.getUbicacion());
			ps.setInt(3, r.getCapacidad());
			ps.setInt(4, r.getId());
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println("ERROR: Imposible conectarse " + e);
		}
		return status;
	}

	public static int eliminar(Recinto r) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("DELETE FROM Recintos WHERE id=?");
			ps.setInt(1, r.getId());
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println("ERROR: Imposible conectarse " + e);
		}

		return status;
	}

	public static boolean borrarRecinto(Recinto r) {
		int resultado = -1;
		try {
			Connection con = getConnection();
			CallableStatement stmt = con.prepareCall("{CALL comprobarRecintoBorrar(?, ?)}");
			stmt.setInt(1, r.getId());
			stmt.registerOutParameter(2, java.sql.Types.INTEGER);

			stmt.execute();

			resultado = stmt.getInt(2);
		} catch (SQLException e) {
			System.out.println("ERROR: Imposible conectarse " + e);
		}
		return resultado == 1;
	}

	public static boolean actualizarRecinto(Recinto r) {
		int resultado = -1;
		try {
			Connection con = getConnection();
			CallableStatement stmt = con.prepareCall("{CALL comprobarRecintoActualizar(?, ?, ?, ?, ?)}");
			stmt.setInt(1, r.getId());
			stmt.setString(2, r.getEspecie());
			stmt.setString(3, r.getUbicacion());
			stmt.setInt(4, r.getCapacidad());
			stmt.registerOutParameter(5, java.sql.Types.INTEGER);

			stmt.execute();

			resultado = stmt.getInt(5);
		} catch (SQLException e) {
			System.out.println("ERROR: Imposible conectarse " + e);
		}
		return resultado == 1;
	}
	
	public static boolean guardarRecinto(Recinto r) {
		int resultado = -1;
		try {
			Connection con = getConnection();
			CallableStatement stmt = con.prepareCall("{CALL comprobarRecintoGuardar(?, ?, ?, ?)}");
			stmt.setString(1, r.getEspecie());
			stmt.setString(2, r.getUbicacion());
			stmt.setInt(3, r.getCapacidad());
			stmt.registerOutParameter(4, java.sql.Types.INTEGER);

			stmt.execute();

			resultado = stmt.getInt(4);
		} catch (SQLException e) {
			System.out.println("ERROR: Imposible conectarse " + e);
		}
		return resultado == 1;
	}


}