package hibernate;
// Generated Feb 20, 2017 3:21:26 PM by Hibernate Tools 4.3.1


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * RegistrationTable generated by hbm2java
 */
@Entity
@Table(name="registration_table"
    ,catalog="ohsdb"
)
public class RegistrationTable  implements java.io.Serializable {


     private String username;
     private String name;
     private String email;
     private String password;
     private String retypepassword;
     private String mobile;
     private String address;
     private String userType;

    

    public RegistrationTable() {
    }

    public RegistrationTable(String username, String name, String email, String password, String retypepassword, String mobile, String address,String userType) {
       this.username = username;
       this.name = name;
       this.email = email;
       this.password = password;
       this.retypepassword = retypepassword;
       this.mobile = mobile;
       this.address = address;
       this.userType=userType;
    }
   
     @Id 

    
    @Column(name="username", unique=true, nullable=false, length=54)
    public String getUsername() {
        return this.username;
    }
    
    public void setUsername(String username) {
        this.username = username;
    }

    
    @Column(name="name", nullable=false, length=54)
    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }

    
    @Column(name="email", nullable=false, length=20)
    public String getEmail() {
        return this.email;
    }
    
    public void setEmail(String email) {
        this.email = email;
    }

    
    @Column(name="password", nullable=false, length=20)
    public String getPassword() {
        return this.password;
    }
    
    public void setPassword(String password) {
        this.password = password;
    }

    
    @Column(name="retypepassword", nullable=false, length=20)
    public String getRetypepassword() {
        return this.retypepassword;
    }
    
    public void setRetypepassword(String retypepassword) {
        this.retypepassword = retypepassword;
    }

    
    @Column(name="mobile", nullable=false, length=30)
    public String getMobile() {
        return this.mobile;
    }
    
    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    
    @Column(name="address", nullable=false, length=100)
    public String getAddress() {
        return this.address;
    }
    
    public void setAddress(String address) {
        this.address = address;
    }

    public String getUserType() {
        return userType;
    }

    public void setUserType(String userType) {
        this.userType = userType;
    }

    public String getComplainId() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }


}

