package com.jaspions.giza.web;

import com.jaspions.giza.domain.PessoaFisica;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/pessoafisicas")
@Controller
@RooWebScaffold(path = "pessoafisicas", formBackingObject = PessoaFisica.class)
public class PessoaFisicaController {
}
