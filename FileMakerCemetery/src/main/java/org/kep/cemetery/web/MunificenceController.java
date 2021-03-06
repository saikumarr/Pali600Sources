package org.kep.cemetery.web;
import org.kep.cemetery.domain.Munificence;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/munificences")
@Controller
@RooWebScaffold(path = "munificences", formBackingObject = Munificence.class)
public class MunificenceController {
}
