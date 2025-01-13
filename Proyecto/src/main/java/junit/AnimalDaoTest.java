package junit;

import com.zoologico.bean.Animal;
import com.zoologico.bean.Recinto;
import com.zoologico.dao.AnimalDao;
import org.junit.jupiter.api.Test;
import java.sql.Date;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNull;

public class AnimalDaoTest {
    
    @Test
    public void AnimalCreacion() {
        Animal a = new Animal();
        a.setId(1);
        a.setNombre("Leo");
        a.setEspecie("León");
        a.setFechaNacimiento(new Date(System.currentTimeMillis()));
        Recinto r = new Recinto();
        r.setId(1);
        a.setRecintoId(r);

        assertEquals(1, a.getId());
        assertEquals("Leo", a.getNombre());
        assertEquals("León", a.getEspecie());
        assertEquals(1, a.getRecintoId());
    }

    @Test
    public void AnimalCreacionVacio() {
        Animal a = new Animal();
        
        assertEquals(1, a.getId());
        assertNull(a.getNombre());
        assertNull(a.getEspecie());
        assertNull(a.getFechaNacimiento());
        assertNull(a.getRecintoId());
    }

}
