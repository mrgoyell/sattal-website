package in.sattalforestresort.www;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class WebsiteController {

    @RequestMapping(value = {"/","/home"},method = RequestMethod.GET)
    public String home(){
        return "jsp/index";
    }

    @GetMapping("/hotel")
    public String hotel(){
        return "jsp/hotel";
    }

    @GetMapping("/about")
    public String about(){
        return "jsp/about";
    }

    @GetMapping("/blog")
    public String blog(){
        return "jsp/blog";
    }

    @GetMapping("/contact-us")
    public String contact(){
        return "jsp/contact";
    }
}
