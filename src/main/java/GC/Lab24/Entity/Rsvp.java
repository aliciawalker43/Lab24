package GC.Lab24.Entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table( name="rsvp")
public class Rsvp {

	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	private Long id;
	private String attendee;
	private String comment;
	@ManyToOne
	@JoinColumn(name= "party_Id", unique = true)
	private Party party;
	
	
	
	
	
	public Rsvp(Long id, String attendee, String comment, Party party) {
		super();
		this.id = id;
		this.attendee = attendee;
		this.comment = comment;
		this.party = party;
	}




	public Rsvp() {
		super();
	}

	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getAttendee() {
		return attendee;
	}
	public void setAttendee(String attendee) {
		this.attendee = attendee;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public Party getParty() {
		return party;
	}
	public void setParty(Party party) {
		this.party = party;
	}




	@Override
	public String toString() {
		return "Rsvp [id=" + id + ", attendee=" + attendee + ", comment=" + comment + ", party=" + party + "]";
	}


	
	
	
	
	
	
	
	
	
	
	
	
}
