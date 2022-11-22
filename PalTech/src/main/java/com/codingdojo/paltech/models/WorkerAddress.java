//package com.codingdojo.paltech.models;
//
//
//import java.util.Date;
//import java.util.List;
//
//import javax.persistence.Column;
//import javax.persistence.Entity;
//import javax.persistence.FetchType;
//import javax.persistence.GeneratedValue;
//import javax.persistence.GenerationType;
//import javax.persistence.Id;
//import javax.persistence.OneToMany;
//import javax.persistence.PrePersist;
//import javax.persistence.PreUpdate;
//import javax.persistence.Table;
//import javax.validation.constraints.NotEmpty;
//import javax.validation.constraints.Size;
//
//import org.springframework.format.annotation.DateTimeFormat;
//
//@Entity
//@Table(name="workerAddresses")
//public class WorkerAddress {
//	
//	@Id
//    @GeneratedValue(strategy = GenerationType.IDENTITY)
//    private Long id;
//	
//    @NotEmpty(message="Country name is required!")
//    @Size(min=3, max=40, message="Country name must be between 3 and 30 characters")
//    private String country;
//
//    
//    @NotEmpty(message="City name is required!")
//    @Size(min=3, max=40, message="City name must be between 3 and 30 characters")
//    private String city;
//    
//    
//    @NotEmpty(message="Village name is required!")
//    @Size(min=3, max=40, message="Village name must be between 3 and 30 characters")
//    private String village;
//    
//	@Column(updatable=false)
//	@DateTimeFormat(pattern="yyyy-MM-dd")
//	private Date createdAt;
//	
//	@DateTimeFormat(pattern="yyyy-MM-dd")
//	private Date updatedAt;
//	
//	@OneToMany(mappedBy="workerAddress", fetch=FetchType.LAZY)
//	private List<Worker> workers;
//	
////	Constructor:
//	public WorkerAddress() {
//	}
//
//	
//	
//	
//	
//
//	
////	getters:
//	public Long getId() {
//		return id;
//	}
//	
//
//
//	public List<Worker> getWorkers() {
//		return workers;
//	}
//
//
//	public String getCountry() {
//		return country;
//	}
//
//
//	public String getCity() {
//		return city;
//	}
//
//
//	public String getVillage() {
//		return village;
//	}
//
//
//	public Date getCreatedAt() {
//		return createdAt;
//	}
//
//
//	public Date getUpdatedAt() {
//		return updatedAt;
//	}
//
//	
//	
//	
//	//	setters:
//	public void setId(Long id) {
//		this.id = id;
//	}
//
//	public void setCountry(String country) {
//		this.country = country;
//	}
//
//
//	public void setCity(String city) {
//		this.city = city;
//	}
//
//
//	public void setVillage(String village) {
//		this.village = village;
//	}
//
//
//	public void setCreatedAt(Date createdAt) {
//		this.createdAt = createdAt;
//	}
//
//
//	public void setUpdatedAt(Date updatedAt) {
//		this.updatedAt = updatedAt;
//	}
//	
//	public void setWorkers(List<Worker> workers) {
//		this.workers = workers;
//	}
//	
//	
//	@PrePersist
//	protected void onCreate() {
//		this.createdAt = new Date();
//	}
//	
//	@PreUpdate
//	protected void onUpdate() {
//		this.updatedAt = new Date();
//	}
//	
//    
//}