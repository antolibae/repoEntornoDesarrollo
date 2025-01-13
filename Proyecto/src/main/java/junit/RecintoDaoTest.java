package junit;

import static org.junit.jupiter.api.Assertions.*;
import com.zoologico.bean.Animal;
import com.zoologico.bean.Recinto;
import com.zoologico.dao.RecintoDao;
import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNull;

class RecintoDaoTest {

	@Test
    public void RecintoCreacion() {
        Recinto r = new Recinto();
        r.setId(1);
        r.setNombre("Mapache 1");
        r.setUbicacion("Sur");
        r.setCapacidad(10);
        Animal a = new Animal();
        a.setEspecie("Mapache");
        r.setEspecie(a);

        assertEquals(1, r.getId());
        assertEquals("Mapache 1", r.getNombre());
        assertEquals(10, r.getCapacidad());
        assertEquals("Sur", r.getUbicacion());
        assertEquals("Mapache", r.getEspecie());
    }

    @Test
    public void RecintoCreacionVacio() {
        Recinto r = new Recinto();
        
        assertEquals(1, r.getId());
        assertNull(r.getNombre());
        assertNull(r.getUbicacion());
        assertNull(r.getCapacidad());
    }

}
