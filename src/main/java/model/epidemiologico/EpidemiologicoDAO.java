package model.epidemiologico;

import java.util.ArrayList;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

public interface EpidemiologicoDAO {
    public Epidemiologico saveEpidemiologico(Epidemiologico epidemiologico);
    public List<Epidemiologico> getEpidemiologicos();
    public Epidemiologico updateEpidemiologico(Epidemiologico epidemiologico);
    public List<Epidemiologico> findByCode(String id);
}