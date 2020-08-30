package in.sattalforestresort.www.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.Map;



@RestController
public class EmailController {
    @Autowired
    private EmailService service;

    @PostMapping("/sendingEmail")
    public MailResponse sendEmail(@RequestBody MailRequest request){
        System.out.println("Hello");
        Map<String,Object> model=new HashMap<>();
        model.put("Name",request.getName());
        model.put("location","Rishikesh");
        return service.sendEmail(request,model);
    }

}
