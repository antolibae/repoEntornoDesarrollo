package junit;

import static org.junit.jupiter.api.Assertions.*;

import com.zoologico.bean.Empleado;
import com.zoologico.bean.Recinto;
import com.zoologico.dao.EmpleadoDao;
import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNull;

class EmpleadoDaoTest {

	@Test
    public void EmpleadoCreacion() {
        Empleado e = new Empleado();
        e.setId(1);
        e.setNombre("Pepe");
        e.setPuesto("Guia");
        e.setSalario(1000);
        Recinto r = new Recinto();
        r.setId(1);
        e.setRecintoId(r);

        assertEquals(1, e.getId());
        assertEquals("Pepe", e.getNombre());
        assertEquals(1000, e.getSalario());
        assertEquals("Guia", e.getPuesto());
        assertEquals(1, e.getRecintoId());
    }

    @Test
    public void EmpleadoCreacionVacio() {
        Empleado e = new Empleado();
        
        assertEquals(1, e.getId());
        assertNull(e.getNombre());
        assertNull(e.getPuesto());
        assertNull(e.getSalario());
    }

}
