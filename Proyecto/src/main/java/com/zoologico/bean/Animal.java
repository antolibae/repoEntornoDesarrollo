package com.zoologico.bean;

import java.sql.Date;

public class Animal {
	private int id;
	private String nombre, especie;
	private Date fechaNacimiento;
	private Recinto recinto;
	
	public Animal() {
		super();
		this.id = 1;
	}
	
	public Animal(int id) {
		super();
		this.id = id;
	}

	public Animal(int id, String nombre, String especie, Date fechaNacimiento, Recinto recinto) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.especie = especie;
		this.fechaNacimiento = fechaNacimiento;
		this.recinto = recinto;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		if(id == 0) {
			this.id = 1;
		}else {
			this.id = id;
		}
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getEspecie() {
		return especie;
	}

	public void setEspecie(String especie) {
		this.especie = especie;
	}

	public Date getFechaNacimiento() {
		return fechaNacimiento;
	}

	public void setFechaNacimiento(Date fecha_nacimiento) {
		this.fechaNacimiento = fecha_nacimiento;
	}

	public int getRecintoId() {
		return recinto.getId();
	}

	public void setRecintoId(Recinto r) {
		this.recinto = r;
	}

}
