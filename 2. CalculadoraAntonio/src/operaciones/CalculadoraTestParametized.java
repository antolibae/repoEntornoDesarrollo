package operaciones;

import static org.junit.jupiter.api.Assertions.*;

import java.util.stream.Stream;

import org.junit.jupiter.api.Test;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.Arguments;
import org.junit.jupiter.params.provider.MethodSource;

class CalculadoraTestParametized {

	@ParameterizedTest
	@MethodSource("division")
	void testDivide(int num1, int num2, int expected) {
		//Creo un objeto calculadora pasandole los parámetros
		Calculadora calc = new Calculadora(num1, num2);
		
		//Llamo a la funcion divide y recojo el resultado
		int resultado = calc.divide();
		
		//Comparo si el resultado que esperro, indicado como parámetro de entrada, coincide con 
		// el resultado que obtengo de llamar a la función
		assertEquals(expected, resultado);
		
		}

	private static Stream<Arguments>division() {
		return Stream.of(Arguments.of(20,10,2),
						Arguments.of(30,-2,15),
						Arguments.of(5,2,2));
	}
	
	
	/* SUMA */
	@ParameterizedTest
	@MethodSource("sumar")
	void testSuma(int num1, int num2, int expected) {
		//Creo un objeto calculadora pasandole los parámetros
		Calculadora calc = new Calculadora(num1, num2);
		
		//Llamo a la funcion divide y recojo el resultado
		int resultado = calc.suma();
		
		//Comparo si el resultado que esperro, indicado como parámetro de entrada, coincide con 
		// el resultado que obtengo de llamar a la función
		assertEquals(expected, resultado);
		}
	
	private static Stream<Arguments>sumar() {
		return Stream.of(Arguments.of(20,10,30),
						Arguments.of(30,-2,15),
						Arguments.of(5,2,7));
	}	
	
	
}
