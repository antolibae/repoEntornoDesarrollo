package com.zoologico.bean;

public class Recinto {
	private int id;
	private String nombre, ubicacion;
	private int capacidad;
	private Animal animal;
	
	public Recinto() {
		super();
		this.id = 1;
	}
	
	public Recinto(int id) {
		super();
		this.id = id;
	}

	public Recinto(int id, String nombre, String ubicacion, int capacidad, Animal animal) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.ubicacion = ubicacion;
		this.capacidad = capacidad;
		this.animal = animal;
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

	public String getUbicacion() {
		return ubicacion;
	}

	public void setUbicacion(String ubicacion) {
		this.ubicacion = ubicacion;
	}

	public int getCapacidad() {
		return capacidad;
	}

	public void setCapacidad(int capacidad) {
		this.capacidad = capacidad;
	}
	
	public String getEspecie() {
		return animal.getEspecie();
	}

	public void setEspecie(Animal a) {
		this.animal = a;
	}
}
