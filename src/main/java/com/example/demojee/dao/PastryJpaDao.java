package com.example.demojee.dao;

import com.example.demojee.dao.entity.Pastry;
import jakarta.persistence.*;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

public class PastryJpaDao implements PastryDao{

    @Override
    public List<Pastry> getAll() {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory(("PU"));
        EntityManager em = emf.createEntityManager();
        EntityTransaction et = em.getTransaction();
        List<Pastry> pastries = new ArrayList<>();
        et.begin();
        try {
            TypedQuery<Pastry> pastryQuery = em.createQuery("SELECT p FROM Pastry p", Pastry.class);
            pastries = pastryQuery.getResultList();
            et.commit();
        } catch (Exception e) {
            if (et.isActive()) {
                et.rollback();
            }
        } finally {
            em.close();
        }
        return pastries;
    }

    @Override
    public List<Pastry> getByName(String name) {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory(("PU"));
        EntityManager em = emf.createEntityManager();
        EntityTransaction et = em.getTransaction();
        List<Pastry> pastries = new ArrayList<>();
        et.begin();
        try {
            TypedQuery<Pastry> pastryQuery = em.createQuery("SELECT p FROM Pastry p WHERE p.name LIKE :name", Pastry.class);
            pastryQuery.setParameter("name", "%" + name + "%");
            pastries = pastryQuery.getResultList();
            et.commit();
        } catch (Exception e) {
            if (et.isActive()) {
                et.rollback();
            }
        } finally {
            em.close();
        }
        return pastries;
    }

    @Override
    public void save(Pastry pastry) {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory(("PU"));
        EntityManager em = emf.createEntityManager();
        EntityTransaction et = em.getTransaction();

        et.begin();
        try {
            em.persist(pastry);
            et.commit();
        } catch (Exception e) {
            if (et.isActive()) {
                et.rollback();
            }
        } finally {
            em.close();
        }
    }

    @Override
    public Optional<Pastry> get(Long id) {
        Optional<Pastry> result = Optional.empty();
        EntityManagerFactory emf = Persistence.createEntityManagerFactory(("PU"));
        EntityManager em = emf.createEntityManager();
        EntityTransaction et = em.getTransaction();
        et.begin();
        try {
            result = Optional.of(em.find(Pastry.class, id));
            et.commit();
        } catch (Exception e) {
            if (et.isActive()) {
                et.rollback();
            }
        } finally {
            em.close();
        }
        return result;
    }


    @Override
    public void update(Pastry pastry) {

    }

    @Override
    public void delete(Pastry pastry) {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory(("PU"));
        EntityManager em = emf.createEntityManager();
        EntityTransaction et = em.getTransaction();
        et.begin();
        try {
            em.remove(em.contains(pastry) ? pastry : em.merge(pastry));
            et.commit();
        } catch (Exception e) {
            if (et.isActive()) {
                et.rollback();
            }
        } finally {
            em.close();
        }

    }
}
