package com.codingdojo.paltech.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codingdojo.paltech.models.Review;
import com.codingdojo.paltech.repositories.ReviewRepository;

@Service
public class ReviewService {
	@Autowired
	ReviewRepository ReviewRepository;
	
	public Review creatReview(Review rate) {
		return ReviewRepository.save(rate);
	}
	
	public List<Review> allRatings(Long workerId){
		return ReviewRepository.getAllRatings(workerId);
	}
	
	public List<Review> allRate(Long workerId){
		return ReviewRepository.getAllRate(workerId);
	}
	
}
