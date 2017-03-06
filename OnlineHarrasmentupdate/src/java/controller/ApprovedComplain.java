/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import hibernate.ComplainTable;
import hibernate.NewHibernateUtil;
import hibernate.RegistrationTable;
import java.util.ArrayList;
import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class ApprovedComplain implements  Controller{

    @Override
    public ModelAndView handleRequest(HttpServletRequest hsr, HttpServletResponse hsr1) throws Exception {
       ModelAndView mv= new ModelAndView("Admin");
       Session sn = NewHibernateUtil.getSessionFactory().openSession();
       Transaction tx= null;
       tx=sn.beginTransaction();
       int i=Integer.parseInt(hsr.getParameter("ref"));
        ComplainTable tb= (ComplainTable) sn.get(ComplainTable.class,i);
        
        tb.setStatus("Approved");
        sn.update(tb);
        tx.commit();
        //sn.close();
        
        tx=sn.beginTransaction();
        ArrayList<ComplainTable> ls=(ArrayList<ComplainTable>) sn.createQuery("from ComplainTable where complain_id="+i+"").list();
        tx.commit();
        //sn.close();
        tx=sn.beginTransaction();
        ArrayList<RegistrationTable> mails=(ArrayList<RegistrationTable>) sn.createQuery("from RegistrationTable where username='"+ls.get(0).getUsername().toString()+"'").list();
        tx.commit();
        sn.close();
        //Email coded Start
            final String username = "riaydh08@gmail.com";
		final String password = "riaydh2005";

		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");

		javax.mail.Session session = javax.mail.Session.getInstance(props,
		  new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(username, password);
			}
		  });

		try {

			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress("riaydh08@gmail.com"));
			message.setRecipients(Message.RecipientType.TO,
                                
		        InternetAddress.parse(mails.get(0).getEmail()));
			message.setSubject("Testing Subject");
			message.setText("Dear Mail Crawler,"
				+ "\n\n No spam to my email, please!");

			Transport.send(message);

			System.out.println("Done");

		} catch (MessagingException e) {
			throw new RuntimeException(e);
		}
        //Email coded End
        
       
       //ComplainTable ct= s
       return mv;
    }
    
    
}
