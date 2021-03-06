// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.jaspions.giza.web;

import com.jaspions.giza.domain.Contato;
import com.jaspions.giza.domain.DocumentoIdentidade;
import com.jaspions.giza.domain.Municipio;
import com.jaspions.giza.domain.OrgaoEmissorDocumento;
import com.jaspions.giza.domain.Pais;
import com.jaspions.giza.domain.PessoaFisica;
import com.jaspions.giza.domain.UnidadeFederativa;
import com.jaspions.giza.web.ApplicationConversionServiceFactoryBean;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.core.convert.converter.Converter;
import org.springframework.format.FormatterRegistry;

privileged aspect ApplicationConversionServiceFactoryBean_Roo_ConversionService {
    
    declare @type: ApplicationConversionServiceFactoryBean: @Configurable;
    
    public Converter<Contato, String> ApplicationConversionServiceFactoryBean.getContatoToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.jaspions.giza.domain.Contato, java.lang.String>() {
            public String convert(Contato contato) {
                return new StringBuilder().append(contato.getDescricaoTipoPersonalizado()).append(" ").append(contato.getDescricao()).toString();
            }
        };
    }
    
    public Converter<Long, Contato> ApplicationConversionServiceFactoryBean.getIdToContatoConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.jaspions.giza.domain.Contato>() {
            public com.jaspions.giza.domain.Contato convert(java.lang.Long id) {
                return Contato.findContato(id);
            }
        };
    }
    
    public Converter<String, Contato> ApplicationConversionServiceFactoryBean.getStringToContatoConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.jaspions.giza.domain.Contato>() {
            public com.jaspions.giza.domain.Contato convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Contato.class);
            }
        };
    }
    
    public Converter<DocumentoIdentidade, String> ApplicationConversionServiceFactoryBean.getDocumentoIdentidadeToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.jaspions.giza.domain.DocumentoIdentidade, java.lang.String>() {
            public String convert(DocumentoIdentidade documentoIdentidade) {
                return new StringBuilder().append(documentoIdentidade.getNumero()).toString();
            }
        };
    }
    
    public Converter<Long, DocumentoIdentidade> ApplicationConversionServiceFactoryBean.getIdToDocumentoIdentidadeConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.jaspions.giza.domain.DocumentoIdentidade>() {
            public com.jaspions.giza.domain.DocumentoIdentidade convert(java.lang.Long id) {
                return DocumentoIdentidade.findDocumentoIdentidade(id);
            }
        };
    }
    
    public Converter<String, DocumentoIdentidade> ApplicationConversionServiceFactoryBean.getStringToDocumentoIdentidadeConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.jaspions.giza.domain.DocumentoIdentidade>() {
            public com.jaspions.giza.domain.DocumentoIdentidade convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), DocumentoIdentidade.class);
            }
        };
    }
    
    public Converter<Municipio, String> ApplicationConversionServiceFactoryBean.getMunicipioToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.jaspions.giza.domain.Municipio, java.lang.String>() {
            public String convert(Municipio municipio) {
                return new StringBuilder().append(municipio.getNome()).toString();
            }
        };
    }
    
    public Converter<Long, Municipio> ApplicationConversionServiceFactoryBean.getIdToMunicipioConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.jaspions.giza.domain.Municipio>() {
            public com.jaspions.giza.domain.Municipio convert(java.lang.Long id) {
                return Municipio.findMunicipio(id);
            }
        };
    }
    
    public Converter<String, Municipio> ApplicationConversionServiceFactoryBean.getStringToMunicipioConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.jaspions.giza.domain.Municipio>() {
            public com.jaspions.giza.domain.Municipio convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Municipio.class);
            }
        };
    }
    
    public Converter<OrgaoEmissorDocumento, String> ApplicationConversionServiceFactoryBean.getOrgaoEmissorDocumentoToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.jaspions.giza.domain.OrgaoEmissorDocumento, java.lang.String>() {
            public String convert(OrgaoEmissorDocumento orgaoEmissorDocumento) {
                return new StringBuilder().append(orgaoEmissorDocumento.getNome()).append(" ").append(orgaoEmissorDocumento.getSigla()).toString();
            }
        };
    }
    
    public Converter<Long, OrgaoEmissorDocumento> ApplicationConversionServiceFactoryBean.getIdToOrgaoEmissorDocumentoConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.jaspions.giza.domain.OrgaoEmissorDocumento>() {
            public com.jaspions.giza.domain.OrgaoEmissorDocumento convert(java.lang.Long id) {
                return OrgaoEmissorDocumento.findOrgaoEmissorDocumento(id);
            }
        };
    }
    
    public Converter<String, OrgaoEmissorDocumento> ApplicationConversionServiceFactoryBean.getStringToOrgaoEmissorDocumentoConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.jaspions.giza.domain.OrgaoEmissorDocumento>() {
            public com.jaspions.giza.domain.OrgaoEmissorDocumento convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), OrgaoEmissorDocumento.class);
            }
        };
    }
    
    public Converter<Pais, String> ApplicationConversionServiceFactoryBean.getPaisToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.jaspions.giza.domain.Pais, java.lang.String>() {
            public String convert(Pais pais) {
                return new StringBuilder().append(pais.getNome()).append(" ").append(pais.getSigla()).toString();
            }
        };
    }
    
    public Converter<Long, Pais> ApplicationConversionServiceFactoryBean.getIdToPaisConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.jaspions.giza.domain.Pais>() {
            public com.jaspions.giza.domain.Pais convert(java.lang.Long id) {
                return Pais.findPais(id);
            }
        };
    }
    
    public Converter<String, Pais> ApplicationConversionServiceFactoryBean.getStringToPaisConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.jaspions.giza.domain.Pais>() {
            public com.jaspions.giza.domain.Pais convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Pais.class);
            }
        };
    }
    
    public Converter<PessoaFisica, String> ApplicationConversionServiceFactoryBean.getPessoaFisicaToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.jaspions.giza.domain.PessoaFisica, java.lang.String>() {
            public String convert(PessoaFisica pessoaFisica) {
                return new StringBuilder().append(pessoaFisica.getNome()).append(" ").append(pessoaFisica.getApelido()).append(" ").append(pessoaFisica.getCpf()).append(" ").append(pessoaFisica.getDataNascimento()).toString();
            }
        };
    }
    
    public Converter<Long, PessoaFisica> ApplicationConversionServiceFactoryBean.getIdToPessoaFisicaConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.jaspions.giza.domain.PessoaFisica>() {
            public com.jaspions.giza.domain.PessoaFisica convert(java.lang.Long id) {
                return PessoaFisica.findPessoaFisica(id);
            }
        };
    }
    
    public Converter<String, PessoaFisica> ApplicationConversionServiceFactoryBean.getStringToPessoaFisicaConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.jaspions.giza.domain.PessoaFisica>() {
            public com.jaspions.giza.domain.PessoaFisica convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), PessoaFisica.class);
            }
        };
    }
    
    public Converter<UnidadeFederativa, String> ApplicationConversionServiceFactoryBean.getUnidadeFederativaToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.jaspions.giza.domain.UnidadeFederativa, java.lang.String>() {
            public String convert(UnidadeFederativa unidadeFederativa) {
                return new StringBuilder().append(unidadeFederativa.getNome()).append(" ").append(unidadeFederativa.getSigla()).toString();
            }
        };
    }
    
    public Converter<Long, UnidadeFederativa> ApplicationConversionServiceFactoryBean.getIdToUnidadeFederativaConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.jaspions.giza.domain.UnidadeFederativa>() {
            public com.jaspions.giza.domain.UnidadeFederativa convert(java.lang.Long id) {
                return UnidadeFederativa.findUnidadeFederativa(id);
            }
        };
    }
    
    public Converter<String, UnidadeFederativa> ApplicationConversionServiceFactoryBean.getStringToUnidadeFederativaConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.jaspions.giza.domain.UnidadeFederativa>() {
            public com.jaspions.giza.domain.UnidadeFederativa convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), UnidadeFederativa.class);
            }
        };
    }
    
    public void ApplicationConversionServiceFactoryBean.installLabelConverters(FormatterRegistry registry) {
        registry.addConverter(getContatoToStringConverter());
        registry.addConverter(getIdToContatoConverter());
        registry.addConverter(getStringToContatoConverter());
        registry.addConverter(getDocumentoIdentidadeToStringConverter());
        registry.addConverter(getIdToDocumentoIdentidadeConverter());
        registry.addConverter(getStringToDocumentoIdentidadeConverter());
        registry.addConverter(getMunicipioToStringConverter());
        registry.addConverter(getIdToMunicipioConverter());
        registry.addConverter(getStringToMunicipioConverter());
        registry.addConverter(getOrgaoEmissorDocumentoToStringConverter());
        registry.addConverter(getIdToOrgaoEmissorDocumentoConverter());
        registry.addConverter(getStringToOrgaoEmissorDocumentoConverter());
        registry.addConverter(getPaisToStringConverter());
        registry.addConverter(getIdToPaisConverter());
        registry.addConverter(getStringToPaisConverter());
        registry.addConverter(getPessoaFisicaToStringConverter());
        registry.addConverter(getIdToPessoaFisicaConverter());
        registry.addConverter(getStringToPessoaFisicaConverter());
        registry.addConverter(getUnidadeFederativaToStringConverter());
        registry.addConverter(getIdToUnidadeFederativaConverter());
        registry.addConverter(getStringToUnidadeFederativaConverter());
    }
    
    public void ApplicationConversionServiceFactoryBean.afterPropertiesSet() {
        super.afterPropertiesSet();
        installLabelConverters(getObject());
    }
    
}
