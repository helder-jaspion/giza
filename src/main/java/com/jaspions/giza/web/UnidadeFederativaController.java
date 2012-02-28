package com.jaspions.giza.web;

import com.jaspions.giza.domain.UnidadeFederativa;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/unidadefederativas")
@Controller
@RooWebScaffold(path = "unidadefederativas", formBackingObject = UnidadeFederativa.class)
public class UnidadeFederativaController {
}
