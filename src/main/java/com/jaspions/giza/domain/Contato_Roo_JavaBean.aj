// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.jaspions.giza.domain;

import com.jaspions.giza.domain.Contato;
import com.jaspions.giza.domain.TipoContato;

privileged aspect Contato_Roo_JavaBean {
    
    public TipoContato Contato.getTipoContato() {
        return this.tipoContato;
    }
    
    public void Contato.setTipoContato(TipoContato tipoContato) {
        this.tipoContato = tipoContato;
    }
    
    public String Contato.getDescricaoTipoPersonalizado() {
        return this.descricaoTipoPersonalizado;
    }
    
    public void Contato.setDescricaoTipoPersonalizado(String descricaoTipoPersonalizado) {
        this.descricaoTipoPersonalizado = descricaoTipoPersonalizado;
    }
    
    public String Contato.getDescricao() {
        return this.descricao;
    }
    
    public void Contato.setDescricao(String descricao) {
        this.descricao = descricao;
    }
    
}