package com.jaspions.giza.domain;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Enumerated;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Past;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class PessoaFisica {

    @NotNull
    private String nome;

    private String apelido;

    @Enumerated
    private Sexo sexo;

    @NotNull
    private String cpf;

    @NotNull
    @ManyToOne
    private DocumentoIdentidade documentoIdentidade;

    @NotNull
    @Past
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date dataNascimento;

    @NotNull
    @ManyToOne
    private Municipio municipioNaturalidade;

    @OneToMany(cascade = CascadeType.ALL)
    private Set<Contato> contatos = new HashSet<Contato>();
}
