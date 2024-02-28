package com.cric.api.repositery;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.cric.api.entities.Match;

public interface MatchRepo extends JpaRepository<Match,Integer>{
	
	// match fetch 
	  Optional<Match> findByTeamHeading(String teamHeading);

}
