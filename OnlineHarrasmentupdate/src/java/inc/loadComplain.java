/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package inc;

import hibernate.ComplainTable;
import hibernate.NewHibernateUtil;
import java.util.ArrayList;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author SGR
 */
public class loadComplain {
    public static ArrayList<ComplainTable> getComplain(){
        
        Session sn=NewHibernateUtil.getSessionFactory().openSession();
        Transaction tx=null;
        tx=sn.beginTransaction();
        ArrayList<ComplainTable> ls=(ArrayList<ComplainTable>)sn.createQuery("from ComplainTable").list();
        tx.commit();
        sn.close();
        return ls;
    
    }
    
}
