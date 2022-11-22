package com.codingdojo.paltech.models;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="users")
public class User {
	
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    @NotEmpty(message="First Name is required!")
    @Size(min=3, max=30, message="First Name must be between 3 and 30 characters")
    private String firstName;
    
    @NotEmpty(message="Last Name is required!")
    @Size(min=3, max=30, message="Last Name must be between 3 and 30 characters")
    private String lastName;
    
    @NotEmpty(message="Email is required!")
    @Email(message="Please enter a valid email!")
    private String email;
    
    @Size(min=10, max=20,  message = "Please enter a valid mobile number")
    private String mobile;
    
    @NotEmpty(message="Password is r/equired!")
    @Size(min=8, max=128, message="Password must be between 8 and 128 c/haracters")
    private String password;
    
//    @NotEmpty(message="Address is required!")
//    @Size(min=3, max=128, message="Address must be between 3 and 128 characters")
    
    private String address;
    
    @DateTimeFormat(pattern="yyyy-MM-dd")
    @NotNull(message="Please enter your birthdate")
    private Date birthDate;
    
    @Transient
    @NotEmpty(message="Confirm Password is required!")
    @Size(min=8, max=128, message="Confirm Password must be between 8 and 128 characters")
    private String passwordConfirmation;
    
    @Column(updatable=false)
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date createdAt;
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date updatedAt;
    
    @PrePersist
    protected void onCreate(){
        this.createdAt = new Date();
    }
    @PreUpdate
    protected void onUpdate(){
        this.updatedAt = new Date();
    }
    
	@ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(
    		name = "reviews",
    		joinColumns = @JoinColumn(name = "user_id"),
    		inverseJoinColumns = @JoinColumn(name = "worker_id")
    		
    		)
	private List<Worker> workers;
	
	@ManyToMany(fetch = FetchType.EAGER)
    @JoinTable(
        name = "users_roles", 
        joinColumns = @JoinColumn(name = "user_id"), 
        inverseJoinColumns = @JoinColumn(name = "role_id"))
    private List<Role> roles;
    
	public User() {

	}
	
	
	public String getLastName() {
		return lastName;
	}
	public String getEmail() {
		return email;
	}
	public String getMobile() {
		return mobile;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getAddress() {
		return address;
	}
	public Date getBirthDate() {
		return birthDate;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public void setBirthDate(Date birthDate) {
		this.birthDate = birthDate;
	}
	public Long getId() {
		return id;
	}
	public String getFirstName() {
		return firstName;
	}

	public String getPassword() {
		return password;
	}

	
	
	public String getPasswordConfirmation() {
		return passwordConfirmation;
	}
	public void setPasswordConfirmation(String passwordConfirmation) {
		this.passwordConfirmation = passwordConfirmation;
	}
	public Date getCreatedAt() {
		return createdAt;
	}
	public Date getUpdatedAt() {
		return updatedAt;
	}
	public List<Worker> getWorkers() {
		return workers;
	}
	public List<Role> getRoles() {
		return roles;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}
	
	

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}
	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}
	public void setWorkers(List<Worker> workers) {
		this.workers = workers;
	}
	public void setRoles(List<Role> roles) {
		this.roles = roles;
	}
	
	
	
    
    
}
