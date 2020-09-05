package in.sattalforestresort.www.service;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Map;

@Service
@Slf4j
public class WebsiteService {

    @Autowired
    EmailService emailService;

    public void contact(Map<String, String> params) {
        StringBuilder message = new StringBuilder();
        message.append("Name: "+params.get("name")+"\n <br>");
        message.append("Phone: "+params.get("phone")+"\n <br>");
        message.append("Email: "+params.get("email")+"\n <br>");
        message.append("Message: "+params.get("message")+"\n <br>");
        try {
            System.out.println(message.toString());
            emailService.sendmail("sattalforestresort@gmail.com", "Enquiry from " + params.get("name"), message.toString());
        }
        catch (Exception e){
            log.info(e.getMessage());
        }
    }
}
