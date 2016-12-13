package com.sut.jo.web;
import com.sut.jo.domain.Good;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/goods")
@Controller
@RooWebScaffold(path = "goods", formBackingObject = Good.class)
public class GoodController {
}
