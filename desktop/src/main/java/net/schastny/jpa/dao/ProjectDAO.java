package net.schastny.jpa.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import net.schastny.jpa.domain.Project;

public class ProjectDAO {
    private EntityManagerFactory entityManagerFactory;

    public ProjectDAO() {
        entityManagerFactory = Persistence.createEntityManagerFactory("company_unit");
    }
    
    public void store(Project project) {
        EntityManager manager = entityManagerFactory.createEntityManager();
        EntityTransaction tx = manager.getTransaction();
        try {
            tx.begin();
            manager.merge(project);
            tx.commit();
        } catch (RuntimeException e) {
            tx.rollback();
            throw e;
        } finally {
            manager.close();
        }
    }

    public void delete(Long projectId) {
        EntityManager manager = entityManagerFactory.createEntityManager();
        EntityTransaction tx = manager.getTransaction();
        try {
            tx.begin();
            Project project = manager.find(Project.class, projectId);
            manager.remove(project);
            tx.commit();
        } catch (RuntimeException e) {
            tx.rollback();
            throw e;
        } finally {
            manager.close();
        }
    }

    public Project findById(Long projectId) {
        EntityManager manager = entityManagerFactory.createEntityManager();
        try {
            return manager.find(Project.class, projectId);
        } finally {
            manager.close();
        }
    }

    public List<Project> findAll() {
        EntityManager manager = entityManagerFactory.createEntityManager();
        try {
            Query query = manager.createQuery("select project from Project project");
            @SuppressWarnings("unchecked")
            List<Project> items = query.getResultList();
            for (Project item : items) {
                item.getPersons().size();
            }
            
            return items;

        } finally {
            manager.close();
        }
    }
    
}