package com.klu.demo;

import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

public class Vote {
	  @Id
	    @GeneratedValue(strategy = GenerationType.IDENTITY)
	    private Long id;
	    private String partyName;
	    private int voteCount;
		public Long getId() {
			return id;
		}
		public void setId(Long id) {
			this.id = id;
		}
		public String getPartyName() {
			return partyName;
		}
		public void setPartyName(String partyName) {
			this.partyName = partyName;
		}
		public int getVoteCount() {
			return voteCount;
		}
		public void setVoteCount(int voteCount) {
			this.voteCount = voteCount;
		}
		
		
		
	    
}
