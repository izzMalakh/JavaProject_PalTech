package com.codingdojo.paltech.repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;

import com.codingdojo.paltech.models.User;



public interface UserRepository extends CrudRepository<User, Long> {
	List<User> findAll();
//	Optional<User> findByEmail(String email);
	Optional<User> findById(Long id);
//	Optional<User> findByName(String name);
	User findByFirstName(String firstName);
	User findByEmail(String email);
}