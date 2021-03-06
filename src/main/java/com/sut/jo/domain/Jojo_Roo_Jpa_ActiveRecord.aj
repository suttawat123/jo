// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.sut.jo.domain;

import com.sut.jo.domain.Jojo;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Jojo_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Jojo.entityManager;
    
    public static final List<String> Jojo.fieldNames4OrderClauseFilter = java.util.Arrays.asList("");
    
    public static final EntityManager Jojo.entityManager() {
        EntityManager em = new Jojo().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Jojo.countJojoes() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Jojo o", Long.class).getSingleResult();
    }
    
    public static List<Jojo> Jojo.findAllJojoes() {
        return entityManager().createQuery("SELECT o FROM Jojo o", Jojo.class).getResultList();
    }
    
    public static List<Jojo> Jojo.findAllJojoes(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Jojo o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Jojo.class).getResultList();
    }
    
    public static Jojo Jojo.findJojo(Long id) {
        if (id == null) return null;
        return entityManager().find(Jojo.class, id);
    }
    
    public static List<Jojo> Jojo.findJojoEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Jojo o", Jojo.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<Jojo> Jojo.findJojoEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Jojo o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Jojo.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Jojo.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Jojo.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Jojo attached = Jojo.findJojo(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Jojo.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Jojo.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Jojo Jojo.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Jojo merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
