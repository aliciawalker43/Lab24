package GC.Lab24.Entity;

import java.time.LocalDate;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table (name="party")
public class Party {
	
	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	private Long id;
	private String name;
	private String date;
	@OneToMany(mappedBy="party")
	private Set<Rsvp> rsvps;
	
	
	
	public Party(Long id, String name, String date, Set<Rsvp> rsvps) {
		super();
		this.id = id;
		this.name = name;
		this.date = date;
		this.rsvps = rsvps;
	}


	public Party() {
		super();
	}


	
	public Set<Rsvp> getRsvps() {
		return rsvps;
	}


	public void setRsvps(Set<Rsvp> rsvps) {
		this.rsvps = rsvps;
	}


	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	@Override
	public String toString() {
		return "PartyPojo [id=" + id + ", name=" + name + ", date=" + date + "]";
	}

	
	
}
