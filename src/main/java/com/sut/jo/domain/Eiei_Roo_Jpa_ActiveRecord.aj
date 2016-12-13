// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.sut.jo.domain;

import com.sut.jo.domain.Eiei;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Eiei_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Eiei.entityManager;
    
    public static final List<String> Eiei.fieldNames4OrderClauseFilter = java.util.Arrays.asList("");
    
    public static final EntityManager Eiei.entityManager() {
        EntityManager em = new Eiei().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Eiei.countEieis() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Eiei o", Long.class).getSingleResult();
    }
    
    public static List<Eiei> Eiei.findAllEieis() {
        return entityManager().createQuery("SELECT o FROM Eiei o", Eiei.class).getResultList();
    }
    
    public static List<Eiei> Eiei.findAllEieis(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Eiei o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Eiei.class).getResultList();
    }
    
    public static Eiei Eiei.findEiei(Long id) {
        if (id == null) return null;
        return entityManager().find(Eiei.class, id);
    }
    
    public static List<Eiei> Eiei.findEieiEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Eiei o", Eiei.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<Eiei> Eiei.findEieiEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Eiei o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Eiei.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Eiei.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Eiei.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Eiei attached = Eiei.findEiei(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Eiei.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Eiei.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Eiei Eiei.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Eiei merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
