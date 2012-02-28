package com.jaspions.giza.web;

import com.jaspions.giza.domain.DocumentoIdentidade;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/documentoidentidades")
@Controller
@RooWebScaffold(path = "documentoidentidades", formBackingObject = DocumentoIdentidade.class)
public class DocumentoIdentidadeController {
}
