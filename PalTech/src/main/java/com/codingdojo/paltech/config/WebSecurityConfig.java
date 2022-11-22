package com.codingdojo.paltech.config;


import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.stereotype.Component;

@Configuration
@Component("disableSecurityConfigurationBean")

public class WebSecurityConfig {
	
	private UserDetailsService userDetailsService;
	
	@Bean
	public BCryptPasswordEncoder bCryptPasswordEncoder() {
		return new BCryptPasswordEncoder();
	}
	
	@Bean
	protected SecurityFilterChain filterChain(HttpSecurity http) throws Exception{
		
	
		http.
	        authorizeRequests()
//	            .antMatchers("/css/*","/img/*", "/js/*", "/vendor/*").permitAll()
	            .antMatchers("/admin/**").access("hasRole('ADMIN')")    // NEW
	            .antMatchers("/","/public/**", "/resources/**","/resources/img/**").permitAll()
	            .anyRequest().permitAll()
	            
	            .and()
	        .formLogin()
	            .loginPage("/login/user")
	            .permitAll()
	            .and()
	        .logout()
	            .permitAll();
		
		return http.build();
	}
	
	public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(userDetailsService).passwordEncoder(bCryptPasswordEncoder());
    } 
}