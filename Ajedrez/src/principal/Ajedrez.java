package principal;

public class Ajedrez {

	
	public static void main (String [] args) {
		int  LONGITUD = 8;
		char [][] tablero = new char[LONGITUD][LONGITUD];		;
		int posF = 0;
		int posC = 0;
		char pieza = 'T';
		if (pieza == 'T') {
			tablero = movimientoTorre(posF, posC);
		}
		
		for (int i= 0; i< tablero.length; i++) {
			for (int j = 0; j< tablero.length; j++) {
				System.out.println(tablero[i][j]);
			}
		}
		
	}
	
	public static char[][] movimientoTorre (int posFila, int posCol) {
		
		int  LONGITUD = 8;

		char [][] tablero = new char[LONGITUD][LONGITUD];		

		for (int i= 0; i< tablero.length; i++) {
			for (int j = 0; j< tablero.length; j++) {
				tablero[i][j] = 'x';
			}
		}
		
		return tablero;
	}
}
