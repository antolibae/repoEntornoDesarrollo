package operaciones;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

class CalculadoraTest4 {

	@Test
	void testSuma() {
		Calculadora calc = new Calculadora(20, 10);
		int resultado = calc.suma();
		assertEquals(30, resultado, "No coinciden los resultados");
	}


	@Test
	void testResta() {
		Calculadora calc = new Calculadora(20, 10);
		int resultado = calc.resta();
		assertEquals(10, resultado, "No coinciden los resultados");	}

	@Test
	void testResta2() {
		Calculadora calc = new Calculadora(10, 20);
		boolean resultado = calc.resta2();
		assertFalse(resultado);
	}
		
	@Test
	void testMultiplica() {
		Calculadora calc = new Calculadora(20, 10);
		int resultado = calc.multiplica();
		assertEquals(200, resultado, "No coinciden los resultados");
	}

	@Test
	void testDivide() {
		Calculadora calc = new Calculadora(20, 10);
		int resultado = calc.divide();
		assertEquals(2, resultado, "No coinciden los resultados");
	}


	@Test
	void testDivide2() {
		Calculadora calc = new Calculadora(20, 0);
		//Debe ser Integer
		Integer resultado = calc.divide2();
		assertNull(resultado);	}
	
	
//	@Test (expected = ArithmeticException.class)
//	public void testDivide0() {
//	  Calculadora calcu = new Calculadora(20, 0);
//	  Integer resultado = calcu.divide0();
//	}

	
	

}
