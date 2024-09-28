package kr.ac.koreantech.devopt_step0;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller

public class HelloController {
  @GetMapping("/")
  public String index() {

    return "index.html";
  }
}
