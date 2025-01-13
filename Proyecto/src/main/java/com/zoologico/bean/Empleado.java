package com.zoologico.bean;

public class Empleado {
	private int id;
	private String nombre, puesto;
	private int salario;
	private Recinto recinto;
	
	/*
	 * Constructor por defecto de Empleado
	 * Llama al constructor padre,es decir, al constructor de Object
	 */
	public Empleado() {
		super();
		this.id = 1;
	}
	
	public Empleado(int id) {
		super();
		this.id = id;
	}

	public Empleado(int id, String nombre, String puesto, int salario, Recinto recinto) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.puesto = puesto;
		this.salario = salario;
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

	public String getPuesto() {
		return puesto;
	}

	public void setPuesto(String puesto) {
		this.puesto = puesto;
	}

	public double getSalario() {
		return salario;
	}

	public void setSalario(int salario) {
		this.salario = salario;
	}

	public int getRecintoId() {
		return recinto.getId();
	}

	public void setRecintoId(Recinto r) {
		this.recinto = r;
	}

}