// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.jaspions.giza.domain;

import com.jaspions.giza.domain.Pais;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Pais_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Pais.entityManager;
    
    public static final EntityManager Pais.entityManager() {
        EntityManager em = new Pais().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Pais.countPaises() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Pais o", Long.class).getSingleResult();
    }
    
    public static List<Pais> Pais.findAllPaises() {
        return entityManager().createQuery("SELECT o FROM Pais o", Pais.class).getResultList();
    }
    
    public static Pais Pais.findPais(Long id) {
        if (id == null) return null;
        return entityManager().find(Pais.class, id);
    }
    
    public static List<Pais> Pais.findPaisEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Pais o", Pais.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Pais.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Pais.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Pais attached = Pais.findPais(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Pais.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Pais.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Pais Pais.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Pais merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
