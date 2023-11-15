package model;

import java.io.Serializable;

public class User implements Serializable {
  private static final long serialVersionUID = 1L;
  
  private String firstName;
  
  private String lastName;
  
  private String email;
  
  private String dateOfBirth;
  
  private String heardFrom;
  
  private String wantsUpdates;
  
  private String contactVia;
  
  public User() {
    this.firstName = "";
    this.lastName = "";
    this.email = "";
    this.dateOfBirth = "";
  }
  
  public User(String firstName, String lastName, String email, String dateOfBirth) {
    this.firstName = firstName;
    this.lastName = lastName;
    this.email = email;
    this.dateOfBirth = dateOfBirth;
  }
  
  public String getFirstName() {
    return this.firstName;
  }
  
  public void setFirstName(String firstName) {
    this.firstName = firstName;
  }
  
  public String getLastName() {
    return this.lastName;
  }
  
  public void setLastName(String lastName) {
    this.lastName = lastName;
  }
  
  public String getEmail() {
    return this.email;
  }
  
  public void setEmail(String email) {
    this.email = email;
  }
  
  public String getDateOfBirth() {
    return this.dateOfBirth;
  }
  
  public void setDateOfBirth(String dateOfBirth) {
    this.dateOfBirth = dateOfBirth;
  }
  
  public String getHeardFrom() {
    return this.heardFrom;
  }
  
  public void setHeardFrom(String heardFrom) {
    this.heardFrom = heardFrom;
  }
  
  public String getWantsUpdates() {
    return this.wantsUpdates;
  }
  
  public void setWantsUpdates(String wantsUpdates) {
    this.wantsUpdates = wantsUpdates;
  }
  
  public String getContactVia() {
    return this.contactVia;
  }
  
  public void setContactVia(String contactVia) {
    this.contactVia = contactVia;
  }
}
