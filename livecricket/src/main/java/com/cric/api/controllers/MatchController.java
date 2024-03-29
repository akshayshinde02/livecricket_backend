package com.cric.api.controllers;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.cric.api.entities.Match;
import com.cric.api.services.MatchService;

@RestController
@RequestMapping("/match")
public class MatchController {

	private MatchService matchService;

    public MatchController(MatchService matchService) {
        this.matchService = matchService;
    }
	
	// get live matches
    @CrossOrigin
	@GetMapping("/live")
    public ResponseEntity<List<Match>> getLiveMatchScores() throws InterruptedException {
        System.out.println("getting live match");
        return new ResponseEntity<>(this.matchService.getLiveMatchScores(), HttpStatus.OK);
    }
	
	
	@GetMapping("/point-table")
    public ResponseEntity<?> getCWC2023PointTable() {
        return new ResponseEntity<>(this.matchService.getCWC2023PointTable(), HttpStatus.OK);
    }

    @GetMapping
    public ResponseEntity<List<Match>> getAllMatches() {
        return new ResponseEntity<>(this.matchService.getAllMatches(), HttpStatus.OK);
    }
}
