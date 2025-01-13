package com.zoologico.dao;

import java.sql.*;
import java.util.List;
import java.util.ArrayList;

import com.zoologico.bean.Animal;

public class AnimalDao {

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

	public static int guardar(Animal a) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement(
					"INSERT INTO Animales(nombre,especie,fecha_nacimiento,recinto_id) VALUES(?, ?, ?, ?)");
			ps.setString(1, a.getNombre());
			ps.setString(2, a.getEspecie());
			ps.setDate(3, new java.sql.Date(a.getFechaNacimiento().getTime()));
			ps.setInt(4, a.getRecintoId());
			status = ps.executeUpdate();
		} catch (SQLIntegrityConstraintViolationException e) {
			System.out.println("ERROR: El recinto no existe en la base de datos.");
		} catch (Exception e) {
			System.out.println("ERROR: Imposible conectarse " + e);
		}
		return status;
	}

	public static int actualizar(Animal a) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement(
					"UPDATE Animales SET nombre=?,especie=?,fecha_nacimiento=?,recinto_id=? WHERE id=?");
			ps.setString(1, a.getNombre());
			ps.setString(2, a.getEspecie());
			ps.setDate(3, new java.sql.Date(a.getFechaNacimiento().getTime()));
			ps.setInt(4, a.getRecintoId());
			ps.setInt(5, a.getId());
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println("ERROR: Imposible conectarse " + e);
		}
		return status;
	}

	public static int eliminar(Animal a) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("DELETE FROM Animales WHERE id=?");
			ps.setInt(1, a.getId());
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println("ERROR: Imposible conectarse " + e);
		}

		return status;
	}

	public static boolean actualizarAnimal(Animal a) {
		int resultado = -1;
		try {
			Connection con = getConnection();
			if (a.getFechaNacimiento() != null) {
				CallableStatement stmt = con.prepareCall("{CALL comprobarAnimalActualizar(?, ?, ?, ?, ?, ?)}");
				stmt.setInt(1, a.getId());
				stmt.setString(2, a.getNombre());
				stmt.setString(3, a.getEspecie());
				stmt.setDate(4, new java.sql.Date(a.getFechaNacimiento().getTime()));
				stmt.setInt(5, a.getRecintoId());
				stmt.registerOutParameter(6, java.sql.Types.INTEGER);

				stmt.execute();

				resultado = stmt.getInt(6);
			} else {
				System.out.println("ERROR: La fecha de nacimiento del animal es nula");
			}
		} catch (SQLException e) {
			System.out.println("ERROR: Imposible conectarse " + e);
		}
		return resultado == 1;
	}

	public static boolean guardarAnimal(Animal a) {
		int resultado = -1;
		try {
			Connection con = getConnection();
			{
				CallableStatement stmt = con.prepareCall("{CALL comprobarAnimalGuardar(?, ?, ?, ?, ?)}");
				stmt.setString(1, a.getNombre());
				stmt.setString(2, a.getEspecie());
				stmt.setDate(3, new java.sql.Date(a.getFechaNacimiento().getTime()));
				stmt.setInt(4, a.getRecintoId());
				stmt.registerOutParameter(5, java.sql.Types.INTEGER);

				stmt.execute();

				resultado = stmt.getInt(5);
			}
		} catch (SQLException e) {
			System.out.println("ERROR: Imposible conectarse " + e);
		}
		return resultado == 1;
	}

	public List<String> obtenerEspeciesUnicas() {
		List<String> especies = new ArrayList<>();

		String sql = "SELECT DISTINCT especie FROM recintos";

		try (Connection conn = getConnection();
				PreparedStatement ps = conn.prepareStatement(sql);
				ResultSet rs = ps.executeQuery()) {

			while (rs.next()) {
				especies.add(rs.getString("especie"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return especies;
	}

}