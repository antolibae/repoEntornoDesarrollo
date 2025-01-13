package clases;

import static org.junit.jupiter.api.Assertions.*;

import java.util.stream.Stream;

import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.Arguments;
import org.junit.jupiter.params.provider.MethodSource;

class FuncionesRecursivasTest {

	@ParameterizedTest
	@MethodSource("probandoSumatorio")
	void testSumatorio(int numero, int expected) {
		int resultado = FuncionesRecursivas.sumatorio(numero);
		assertEquals(expected, resultado);
	}

	private static Stream<Arguments> probandoSumatorio(){
		return Stream.of(
				Arguments.of(1,1),
				Arguments.of(3,6)
				);
		
	}

	@ParameterizedTest
	@MethodSource("probandoPotencia")
	void testPotencia(double a, int n, double expected) {
		double resultado = FuncionesRecursivas.potencia(a, n);
		assertEquals(expected, resultado);
	}
	
	private static Stream<Arguments> probandoPotencia(){
		return Stream.of(
				Arguments.of(2, 1, 2),
				Arguments.of(3, 3, 27)
				);
		
	}

	@ParameterizedTest
	@MethodSource("probandoFibonacci")
	void testFibonacci(int numero, int expected) {
		int resultado = FuncionesRecursivas.fibonacci(numero);
		assertEquals(expected, resultado);
	}
	
	private static Stream<Arguments> probandoFibonacci(){
		return Stream.of(
				Arguments.of(1,1),
				Arguments.of(2,1),
				Arguments.of(3,2)
				);
		
	}

}
