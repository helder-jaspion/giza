package com.jaspions.giza.domain;

import javax.persistence.ManyToOne;
import javax.validation.constraints.NotNull;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class UnidadeFederativa {

    @NotNull
    private String nome;

    @NotNull
    private String sigla;

    @NotNull
    @ManyToOne
    private Pais pais;
}
