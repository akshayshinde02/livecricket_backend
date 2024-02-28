package com.cric.api.services;

import java.util.List;
import java.util.Map;

import com.cric.api.entities.Match;

public interface MatchService {
	
	// get all matches
	
    List<Match> getAllMatches();
	
	// get live matches
    
    List<Match> getLiveMatchScores();
	
	// get 2023 world cup
	
     List<List<String>> getCWC2023PointTable();

}
