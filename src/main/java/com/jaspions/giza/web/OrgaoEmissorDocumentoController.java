package com.jaspions.giza.web;

import com.jaspions.giza.domain.OrgaoEmissorDocumento;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/orgaoemissordocumentoes")
@Controller
@RooWebScaffold(path = "orgaoemissordocumentoes", formBackingObject = OrgaoEmissorDocumento.class)
public class OrgaoEmissorDocumentoController {
}
