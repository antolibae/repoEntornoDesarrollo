package operaciones;

import static org.junit.Assert.assertNull;
import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

class CalculadoraTest2 {

	@Test
	void testSuma() {
		Calculadora calc = new Calculadora(20, 10);
		int resultado = calc.suma();
		assertEquals(30, resultado, "No coinciden los resultados");
	}

	@Test
	void testResta_1() {
		Calculadora calc = new Calculadora(20, 10);
		int resultado = calc.resta();
		assertEquals(10, resultado, "No coinciden los resultados");
	}

	@Test
	void testResta_2() {
		Calculadora calc = new Calculadora(10, 20);
		int resultado = calc.resta();
		assertEquals(10, resultado, "No coinciden los resultados");
	}
	
	@Test
	void testResta2_1() {
		Calculadora calc = new Calculadora(20, 10);
		boolean resultado = calc.resta2();
		assertTrue(resultado);
	}
	
//	@Test
//	void testResta2_2() {
//		Calculadora calc = new Calculadora(10, 20);
//		boolean resultado = calc.resta2();
//		assertFalse(resultado);
//	}
	
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
	void testDivide2_1() {
		Calculadora calc = new Calculadora(20, 0);
		Integer resultado = calc.divide2();
		assertNull(resultado);
	}
	
//	@Test
//	void testDivide2_2() {
//		Calculadora calc = new Calculadora(20, 10);
//		Integer resultado = calc.divide2();
//		assertEquals(2, resultado, "No coinciden los resultados");
//	}

}
