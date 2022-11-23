package com.codingdojo.paltech.repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.codingdojo.paltech.models.Review;


public interface ReviewRepository extends CrudRepository<Review, Long> {
	 List<Review> findAll();
	 Optional<Review> findById(Long id);
//	Review save(Review rate);
	 @Query(value = "SELECT * FROM reviews where worker_id =?1", 
				  nativeQuery = true)
		List<Review> getAllRatings(Long worker_id);
	 
	 @Query(value = "SELECT rating FROM reviews where worker_id =?1", 
			  nativeQuery = true)
	List<Review> getAllRate(Long worker_id);
}
