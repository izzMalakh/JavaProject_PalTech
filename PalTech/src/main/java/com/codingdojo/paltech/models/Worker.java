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
import javax.persistence.ManyToOne;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.lang.Nullable;

@Entity
@Table(name = "workers")
public class Worker {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@NotEmpty(message = "First Name is required!")
	@Size(min = 3, max = 30, message = "First Name must be between 3 and 30 characters")
	private String firstName;

	@NotEmpty(message = "Last Name is required!")
	@Size(min = 3, max = 30, message = "Last Name must be between 3 and 30 characters")
	private String lastName;

	@NotEmpty(message = "Password is required!")
	@Size(min = 8, max = 128, message = "Password must be between 8 and 128 characters")
	private String password;

	 @DateTimeFormat(pattern="yyyy-MM-dd")
	@NotNull(message="Please enter your birthdate")
	private Date birthDate;

	
//	@NotNull(message = "Experience years can't be blank")
//	@Size(min = 0, max = 100, message = "experince years must be from 0-100")
	 @Nullable
	private Integer expYears;

//	@NotEmpty(message = "Description can't be blank")
//	@Size(min = 0, max = 100, message = "Description must be 0-250 characters")
	@Nullable

	private String description;

//	@NotNull(message = "Mobile number can't be blank")
//	@Size(min = 9, max = 10, message = "Please enter a valid mobile number ")
	private Long mobile;

	@NotEmpty(message = "Email is required!")
	@Email(message = "Please enter a valid email!")
	private String email;

	@Nullable
	private Boolean status;

	@Nullable
	private double rating;

	@Column(updatable = false)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date createdAt;

	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date updatedAt;

	@ManyToMany(fetch = FetchType.LAZY)
	@JoinTable(name = "reviews", joinColumns = @JoinColumn(name = "worker_id"), inverseJoinColumns = @JoinColumn(name = "user_id")

	)
	private List<User> users;

//	@ManyToOne(fetch = FetchType.LAZY)
//	@JoinColumn(name = "workerAddress_id")
	private String workerAddress;
	
    @Transient
    @NotEmpty(message="Confirm Password is required!")
    @Size(min=8, max=128, message="Confirm Password must be between 8 and 128 characters")
    private String passwordConfirmation;
    
    private String profession;
    
    @Nullable
    private String pic;

	public Worker() {
	
	}

	
	public String getPasswordConfirmation() {
		return passwordConfirmation;
	}


	public void setPasswordConfirmation(String passwordConfirmation) {
		this.passwordConfirmation = passwordConfirmation;
	}


	public Long getId() {
		return id;
	}

	public String getFirstName() {
		return firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public String getPassword() {
		return password;
	}

	public Date getBirthDate() {
		return birthDate;
	}

	public Integer getExpYears() {
		return expYears;
	}

	public String getDescription() {
		return description;
	}

	public Long getMobile() {
		return mobile;
	}

	public String getEmail() {
		return email;
	}

	
	public String getPic() {
		return pic;
	}


	public void setPic(String pic) {
		this.pic = pic;
	}


	public Boolean getStatus() {
		return status;
	}

	public double getRating() {
		return rating;
	}

	public Date getCreatedAt() {
		return createdAt;
	}

	public Date getUpdatedAt() {
		return updatedAt;
	}

	public List<User> getUsers() {
		return users;
	}

	public String getWorkerAddress() {
		return workerAddress;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public void setBirthDate(Date birthDate) {
		this.birthDate = birthDate;
	}

	public void setExpYears(Integer expYears) {
		this.expYears = expYears;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public void setMobile(Long mobile) {
		this.mobile = mobile;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setStatus(Boolean status) {
		this.status = status;
	}

	public void setRating(double rating) {
		this.rating = rating;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}

	public void setUsers(List<User> users) {
		this.users = users;
	}

	public void setWorkerAddress(String workerAddress) {
		this.workerAddress = workerAddress;
	}
	
	@PrePersist
	protected void onCreate() {
		this.createdAt = new Date();
	}
	
	@PreUpdate
	protected void onUpdate() {
		this.updatedAt = new Date();
	}


	public String getProfession() {
		return profession;
	}


	public void setProfession(String profession) {
		this.profession = profession;
	}
	

	
	
	

}
