package in.sattalforestresort.www.controller;

import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.Map;
import java.util.Properties;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import org.springframework.stereotype.Service;

@Service
public class EmailService {

    public MailResponse sendEmail(MailRequest request, Map<String, Object> model) {
        System.out.println("request ="+request.getTo());
        MailResponse response = new MailResponse();
//Get the session object
        Properties props = new Properties();
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.socketFactory.port", "465");
        props.put("mail.smtp.socketFactory.class",
                "javax.net.ssl.SSLSocketFactory");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.port", "465");
        Session session = Session.getDefaultInstance(props,
                new javax.mail.Authenticator() {
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication(request.getFrom(),"Enter Password");//change accordingly
                    }
                });
//compose message
        try {
            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress(request.getFrom()));//change accordingly
            message.addRecipient(Message.RecipientType.TO,new InternetAddress(request.getTo()));
            message.setSubject("Hello");
            message.setText("Testing.......");
            //send message
            Transport.send(message);
            System.out.println("message sent successfully");
            response.setMessage("mail send to : " + request.getTo());
            response.setStatus(Boolean.TRUE);
        } catch (MessagingException e) {throw new RuntimeException(e);}

        return response;
    }
}
