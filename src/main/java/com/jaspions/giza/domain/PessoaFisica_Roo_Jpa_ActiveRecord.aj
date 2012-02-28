// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.jaspions.giza.domain;

import com.jaspions.giza.domain.PessoaFisica;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect PessoaFisica_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager PessoaFisica.entityManager;
    
    public static final EntityManager PessoaFisica.entityManager() {
        EntityManager em = new PessoaFisica().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long PessoaFisica.countPessoaFisicas() {
        return entityManager().createQuery("SELECT COUNT(o) FROM PessoaFisica o", Long.class).getSingleResult();
    }
    
    public static List<PessoaFisica> PessoaFisica.findAllPessoaFisicas() {
        return entityManager().createQuery("SELECT o FROM PessoaFisica o", PessoaFisica.class).getResultList();
    }
    
    public static PessoaFisica PessoaFisica.findPessoaFisica(Long id) {
        if (id == null) return null;
        return entityManager().find(PessoaFisica.class, id);
    }
    
    public static List<PessoaFisica> PessoaFisica.findPessoaFisicaEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM PessoaFisica o", PessoaFisica.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void PessoaFisica.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void PessoaFisica.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            PessoaFisica attached = PessoaFisica.findPessoaFisica(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void PessoaFisica.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void PessoaFisica.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public PessoaFisica PessoaFisica.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        PessoaFisica merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}