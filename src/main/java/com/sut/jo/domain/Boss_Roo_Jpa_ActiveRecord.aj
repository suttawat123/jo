// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.sut.jo.domain;

import com.sut.jo.domain.Boss;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Boss_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Boss.entityManager;
    
    public static final List<String> Boss.fieldNames4OrderClauseFilter = java.util.Arrays.asList("");
    
    public static final EntityManager Boss.entityManager() {
        EntityManager em = new Boss().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Boss.countBosses() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Boss o", Long.class).getSingleResult();
    }
    
    public static List<Boss> Boss.findAllBosses() {
        return entityManager().createQuery("SELECT o FROM Boss o", Boss.class).getResultList();
    }
    
    public static List<Boss> Boss.findAllBosses(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Boss o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Boss.class).getResultList();
    }
    
    public static Boss Boss.findBoss(Long id) {
        if (id == null) return null;
        return entityManager().find(Boss.class, id);
    }
    
    public static List<Boss> Boss.findBossEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Boss o", Boss.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<Boss> Boss.findBossEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Boss o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Boss.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Boss.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Boss.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Boss attached = Boss.findBoss(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Boss.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Boss.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Boss Boss.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Boss merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}