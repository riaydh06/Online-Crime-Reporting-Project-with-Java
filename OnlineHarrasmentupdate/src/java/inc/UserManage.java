
package inc;

import hibernate.ComplainTable;
import hibernate.NewHibernateUtil;
import hibernate.RegistrationTable;
import java.util.ArrayList;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class UserManage {

    public static ArrayList<RegistrationTable> getUser(){
        
        Session sn=NewHibernateUtil.getSessionFactory().openSession();
        Transaction tx=null;
        tx=sn.beginTransaction();
        ArrayList<RegistrationTable> lsu=(ArrayList<RegistrationTable>)sn.createQuery("from RegistrationTable").list();
        tx.commit();
        sn.close();
        return lsu;
    
    }
    
}
