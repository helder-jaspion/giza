// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.jaspions.giza.domain;

import com.jaspions.giza.domain.DocumentoIdentidade;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect DocumentoIdentidade_Roo_Jpa_Entity {
    
    declare @type: DocumentoIdentidade: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long DocumentoIdentidade.id;
    
    @Version
    @Column(name = "version")
    private Integer DocumentoIdentidade.version;
    
    public Long DocumentoIdentidade.getId() {
        return this.id;
    }
    
    public void DocumentoIdentidade.setId(Long id) {
        this.id = id;
    }
    
    public Integer DocumentoIdentidade.getVersion() {
        return this.version;
    }
    
    public void DocumentoIdentidade.setVersion(Integer version) {
        this.version = version;
    }
    
}
