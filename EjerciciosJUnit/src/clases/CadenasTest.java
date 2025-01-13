package clases;

import static org.junit.jupiter.api.Assertions.assertEquals;

import java.util.stream.Stream;

import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.Arguments;
import org.junit.jupiter.params.provider.MethodSource;

class CadenasTest {

	@ParameterizedTest
	@MethodSource("cantEspacios")
	void testCuentaEspacios(String frase, int expected) {
		Cadenas c = new Cadenas(frase);
		int cantidad = c.cuentaEspacios();
		assertEquals(expected, cantidad);
	}

	private static Stream<Arguments> cantEspacios() {
		return Stream.of(
				Arguments.of("", 0), 
				Arguments.of("Hola", 0), 
				Arguments.of("Hola a todos", 2));

	}

	@ParameterizedTest
	@MethodSource("alReves")
	void testDelReves(String frase, String expected) {
		Cadenas c = new Cadenas(frase);
		String fraseAlReves = c.delReves();
		assertEquals(expected, fraseAlReves);
	}

	private static Stream<Arguments> alReves() {
		return Stream.of(
				Arguments.of("", ""), 
				Arguments.of("A", "A"), 
				Arguments.of("Hola", "aloH"),
				Arguments.of("Hola a todos", "sodot a aloH"));

	}

	@ParameterizedTest
	@MethodSource("cantPalabras")
	void testContarPalabra(String frase, String palabra, int expected) {
		Cadenas c = new Cadenas(frase);
		int numPalabras = c.contarPalabra(palabra);
		assertEquals(expected, numPalabras);
	}

	private static Stream<Arguments> cantPalabras() {
		return Stream.of(
				Arguments.of("", "Nada", 0),
				Arguments.of("Antes de la noche de la fiesta", "Hola", 0),
				Arguments.of("Antes de la noche de la fiesta", "fiesta", 1)
		);

	}

}
