package com.codingdojo.paltech.services;

import java.util.List;
import java.util.Optional;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import com.codingdojo.paltech.models.LoginWorker;
import com.codingdojo.paltech.models.Worker;
import com.codingdojo.paltech.repositories.WorkerRepository;



@Service
public class WorkerService {
	@Autowired
	WorkerRepository workerRepo;
	
	public Worker createWorker(Worker worker) {
		return workerRepo.save(worker);
	}
		

		public Worker findWorkerByEmail(String email) {
		     Optional<Worker> optionalWorker = workerRepo.findByEmail(email);
		     if(optionalWorker.isPresent()) {
		         return optionalWorker.get();
		     } else {
		         return null;
		     }
		 }
		 public Worker findWorkerById(long id) {
		     Optional<Worker> optionalDojo = workerRepo.findById(id);
		     if(optionalDojo.isPresent()) {
		         return optionalDojo.get();
		     } else {
		         return null;
		     }
		 }
		 public List<Worker> allWorkers() {
		     return workerRepo.findAll();
		 }
		 
		    public Worker register(Worker newUser, BindingResult result) {
		        
		    	Optional<Worker> potentialUser = workerRepo.findByEmail(newUser.getEmail());
		    	
		    	// Reject if email is taken (present in database)
		    	if(potentialUser.isPresent()) {
		    		result.rejectValue("email", "Matches", "An account with this email already exists!");
		    	}
		    	
		        // Reject if password doesn't match confirmation
		    	if(!newUser.getPassword().equals(newUser.getPasswordConfirmation())) {
		    		result.rejectValue("confirm", "Matches", "The Confirm Password must match Password!");
		    	}
		    	
		    	// Reject if firstName contains anything other than letters
		    	String toCheckPattern = newUser.getFirstName();
		    	if (!toCheckPattern.matches("[a-zA-Z]+")) {
		    		 result.rejectValue("firstName", "Matches", "Username must contain letters only!");
				}
		    	
		    	String toCheckLastNamePattern = newUser.getLastName();
		    	if (!toCheckLastNamePattern.matches("[a-zA-Z]+")) {
		    		 result.rejectValue("lastName", "Matches", "Username must contain letters only!");
				}
		    	
		    	// Reject if email pattern is incorrect
		    	String toCheckEmailPattern = newUser.getEmail();
		    	if (!toCheckEmailPattern.matches("[a-zA-Z0-9]+[._a-zA-Z0-9!#$%&'*+-/=?^_`{|}~]*[a-zA-Z]*@[a-zA-Z0-9]{2,8}.[a-zA-Z.]{2,6}")) {
		    		 result.rejectValue("email", "Matches", "Please enter a valid email address!");
				}
		    	
		    	
		    	             
		    	// Return null if result has errors
		    	if(result.hasErrors()) {
		    		return null;
		    	}
		    
		        // Hash and set password, save user to database
		    	String hashed = BCrypt.hashpw(newUser.getPassword(), BCrypt.gensalt());
		    	newUser.setPassword(hashed);
		    	return workerRepo.save(newUser);
		    	
		    }
		    
		    public Worker login(LoginWorker newLogin, BindingResult result) {
		    	
		    	Optional<Worker> potentialUser = workerRepo.findByEmail(newLogin.getEmail());
		        
		    	// Reject if email pattern is incorrect
		    	String toCheckEmailPattern = newLogin.getEmail();
		    	if (!toCheckEmailPattern.matches("[a-zA-Z0-9]+[._a-zA-Z0-9!#$%&'*+-/=?^_`{|}~]*[a-zA-Z]*@[a-zA-Z0-9]{1,8}.[a-zA-Z.]{2,6}")) {
		    		 result.rejectValue("email", "Matches", "Please enter a valid email address!");
		    		 return null;
		    	}
		    	
		    	// Find user in the DB by email
		        // Reject if NOT present
		    	if(!potentialUser.isPresent()) {
		    		result.rejectValue("email", "Matches", "User not found!");
		    		return null;
		    	}
		    	
		    	// User exists, retrieve user from DB
		    	Worker user = potentialUser.get();
		        
		        // Reject if BCrypt password match fails
		    	if(!BCrypt.checkpw(newLogin.getPassword(), user.getPassword())) {
		    	    result.rejectValue("password", "Matches", "Invalid Password!");
		    	}
		    	
		    	// Return null if result has errors
		    	if(result.hasErrors()) {
		    		return null;
		    	}
		    	
		        // Otherwise, return the user object
		        return user;
		    }
		    
		 
	}


