package com.jaspions.giza.web;

import com.jaspions.giza.domain.Contato;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/contatoes")
@Controller
@RooWebScaffold(path = "contatoes", formBackingObject = Contato.class)
public class ContatoController {
}
