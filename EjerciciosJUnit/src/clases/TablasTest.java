package clases;

import static org.junit.jupiter.api.Assertions.*;

import java.util.stream.Stream;

import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.Arguments;
import org.junit.jupiter.params.provider.MethodSource;

class TablasTest {

	@ParameterizedTest
	@MethodSource("pruebaEsMagica")
	void testEsMagica(int tabla[][], boolean expected) {
		boolean resultado = Tablas.esMagica(tabla);
		assertEquals(expected, resultado);
	}
	
	private static Stream<Arguments> pruebaEsMagica(){
		return Stream.of(
				Arguments.of(new int[][] {{1, 1, 1}, {2, 2, 2}, {1, 1, 1}}, false),
				Arguments.of(new int[][] {{2, 1, 4}, {2, 1, 4}, {2, 1, 4}}, false),
				Arguments.of(new int[][] {{8, 1, 6}, {3, 5, 7}, {4, 9, 2}}, true)
				);
		
	}

	@ParameterizedTest
	@MethodSource("pruebaGira90")
	void testGira90(int tablaInicio[][], int expected[][]) {
		int resultado[][] = Tablas.gira90(tablaInicio);
		assertArrayEquals(expected, resultado);
	}
	
	private static Stream<Arguments> pruebaGira90(){
		return Stream.of(
				Arguments.of(null, null),
				Arguments.of(new int[2][3], null),
				Arguments.of(new int[0][0], new int[0][0]),
				Arguments.of(new int[][] {{1, 2, 3}, {4, 5, 6},{7, 8, 9}}, new int[][] {{7, 4, 1}, {8, 5, 2},{9, 6, 3}})
				);
		
	}

}
