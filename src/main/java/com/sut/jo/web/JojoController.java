package com.sut.jo.web;
import com.sut.jo.domain.Jojo;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/jojoes")
@Controller
@RooWebScaffold(path = "jojoes", formBackingObject = Jojo.class)
public class JojoController {
}
