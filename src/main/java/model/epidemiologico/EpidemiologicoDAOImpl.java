package model.epidemiologico;

import java.util.List;
import java.util.Date;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

public class EpidemiologicoDAOImpl implements EpidemiologicoDAO{
    public Epidemiologico saveEpidemiologico(Epidemiologico epidemiologico) {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("epidemiologico");     
        EntityManager em = emf.createEntityManager();
        em.getTransaction().begin();
        em.persist(epidemiologico);
        em.getTransaction().commit();
        em.close();
        emf.close();
        return epidemiologico;
    }

    public List<Epidemiologico> getEpidemiologicos() {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("epidemiologico");     
        EntityManager em = emf.createEntityManager();
        Query query = em.createQuery("SELECT epidem FROM epidemiologicos epidem");
        List<Epidemiologico> epidemiologicos = query.getResultList();
        em.close();
        emf.close();
        return epidemiologicos;
    }

    public Epidemiologico updateEpidemiologico(Epidemiologico epidemiologico) {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("epidemiologico");     
        EntityManager em = emf.createEntityManager();
        Epidemiologico epidem = em.find(Epidemiologico.class, epidemiologico.getId());
        em.getTransaction().begin();
        epidem.setData(epidemiologico.getData());
        epidem.setDoencaAssociada(epidemiologico.getDoencaAssociada());
        em.getTransaction().commit();
        em.close();
        emf.close();
        return epidem;
    }

    public List<Epidemiologico> findByCode(String id) {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("epidemiologico");     
        EntityManager em = emf.createEntityManager();
        Query query = em.createQuery("SELECT epidem FROM epidemiologicos epidem WHERE epidem.id = '" + id + "'");
        List<Epidemiologico> epidemiologicos = query.getResultList();
        em.close();
        emf.close();
        return epidemiologicos;
    }    
}
