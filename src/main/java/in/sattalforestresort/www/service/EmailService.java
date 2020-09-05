package in.sattalforestresort.www.service;

import org.springframework.stereotype.Service;

import javax.mail.*;
import javax.mail.internet.*;
import java.io.IOException;
import java.util.Date;
import java.util.Map;
import java.util.Properties;

@Service
public class EmailService {

    public void sendmail(String to, String subject, String message)
            throws MessagingException {
        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");

        Session session = Session.getInstance(props, new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication("website.sattalforestresort@gmail.com","website@sattalforestresort");
            }
        });
        Message msg = new MimeMessage(session);
        msg.setFrom(new InternetAddress("website.sattalforestresort@gmail.com", false));

        msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));
        msg.setSubject(subject);
        msg.setSentDate(new Date());

        MimeBodyPart messageBodyPart = new MimeBodyPart();
        messageBodyPart.setContent(message, "text/html");

        Multipart multipart = new MimeMultipart();
        multipart.addBodyPart(messageBodyPart);
//		   MimeBodyPart attachPart = new MimeBodyPart();

//		   attachPart.attachFile("/var/tmp/image19.png");
//		   multipart.addBodyPart(attachPart);
        msg.setContent(multipart);
        Transport.send(msg);
    }
}
