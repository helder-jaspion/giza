package com.jaspions.giza.web;

import com.jaspions.giza.domain.Municipio;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/municipios")
@Controller
@RooWebScaffold(path = "municipios", formBackingObject = Municipio.class)
public class MunicipioController {
}
