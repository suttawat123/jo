package com.sut.jo.web;
import com.sut.jo.domain.Boss;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/bosses")
@Controller
@RooWebScaffold(path = "bosses", formBackingObject = Boss.class)
public class BossController {
}
