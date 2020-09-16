package in.sattalforestresort.www.controller;

import in.sattalforestresort.www.service.WebsiteService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@Controller
@Slf4j
public class WebsiteController {

    @Autowired
    WebsiteService websiteService;

    @RequestMapping(value = {"/","/home"},method = RequestMethod.GET)
    public String home(){
        return "jsp/index";
    }

    @GetMapping("/about")
    public String hotel(){
        return "jsp/hotel";
    }

    @GetMapping("/activities")
    public String about(){
        return "jsp/activities";
    }

    @GetMapping("/location")
    public String blog(){
        return "jsp/location";
    }

    @GetMapping("/contact-us")
    public String contact(){
        return "jsp/contact";
    }

    @PostMapping("/contact-us")
    public String contactForm(@RequestParam Map<String, String> params){
        websiteService.contact(params);
        return "redirect:/contact-us";
    }
}
