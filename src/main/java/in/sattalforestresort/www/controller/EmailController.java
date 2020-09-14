package in.sattalforestresort.www.controller;

import in.sattalforestresort.www.beans.MailRequest;
import in.sattalforestresort.www.service.EmailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.mail.MessagingException;
import java.util.HashMap;
import java.util.Map;



@RestController
public class EmailController {
    @Autowired
    private EmailService service;

    @PostMapping("/sendingEmail")
    public void sendEmail(@RequestBody MailRequest request) throws MessagingException {
        System.out.println("In sending email");
        Map<String,Object> model=new HashMap<>();
        model.put("Name",request.getName());
        model.put("location","Rishikesh");
        service.sendmail(request.getTo(),request.getSubject(),"Test mail");
    }

}
