// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.sut.jo.domain;

import com.sut.jo.domain.Good;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Good_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Good.entityManager;
    
    public static final List<String> Good.fieldNames4OrderClauseFilter = java.util.Arrays.asList("");
    
    public static final EntityManager Good.entityManager() {
        EntityManager em = new Good().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Good.countGoods() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Good o", Long.class).getSingleResult();
    }
    
    public static List<Good> Good.findAllGoods() {
        return entityManager().createQuery("SELECT o FROM Good o", Good.class).getResultList();
    }
    
    public static List<Good> Good.findAllGoods(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Good o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Good.class).getResultList();
    }
    
    public static Good Good.findGood(Long id) {
        if (id == null) return null;
        return entityManager().find(Good.class, id);
    }
    
    public static List<Good> Good.findGoodEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Good o", Good.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<Good> Good.findGoodEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Good o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Good.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Good.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Good.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Good attached = Good.findGood(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Good.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Good.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Good Good.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Good merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
