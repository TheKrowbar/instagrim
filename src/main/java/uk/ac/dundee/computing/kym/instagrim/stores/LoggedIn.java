/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package uk.ac.dundee.computing.kym.instagrim.stores;

/**
 *
 * @author Administrator
 */
public class LoggedIn {
    private boolean loggedin=false;
    private String Username=null;
    private String firstName=null;
    private String lastName=null;
    private String email=null;
    public void LoggedIn(){
        
    }
    
    public void setUsername(String name){
        this.Username=name;
    }
    public String getUsername(){
        return Username;
    }
    
    public String setfirstName(String f_name){
        this.firstName=f_name;
    }
    public String getfirstName(){
        return firstName;
    }
    
    public String setlastName(String l_name){
        this.lastName=l_name;
    }
    public String getlastName(){
        return lastName;
    }
    
    public String setEmail(String email_address){
        this.email=email_address;
    }
    public String getEmail(){
        return email;
    }
    
    public void setLoggedin(){
        loggedin=true;
    }
    public void setLoggedout(){
        loggedin=false;
    }
    
    public void setLoginState(boolean loggedin){
        this.loggedin=loggedin;
    }
    public boolean getloggedin(){
        return loggedin;
    }
}
