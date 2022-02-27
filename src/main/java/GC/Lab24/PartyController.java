package GC.Lab24;


import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import java.util.Optional;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


import GC.Lab24.Entity.Party;
import GC.Lab24.Entity.PartyOption;
import GC.Lab24.Entity.Rsvp;
import GC.Lab24.dao.PartyDao;
import GC.Lab24.dao.PartyOptionDao;
import GC.Lab24.dao.RsvpDao;


@Controller
public class PartyController {
	
	@Autowired 
	private JdbcTemplate jdbcTemplate;
	@Autowired
	private PartyOptionDao paOpDao;
	@Autowired
	private PartyDao partyDao;
	@Autowired
	private RsvpDao rsvpDao;
	
	@RequestMapping("/")
	public String showHompage(Model model) {
		List<Party> listOfParty= partyDao.findAll();
		model.addAttribute("partys", listOfParty);
		return "homepage";
	}

	@RequestMapping("/votepage")
	public String vote(Model model) {
		
		List<PartyOption> listOfParty= paOpDao.findAll();
		model.addAttribute("party", listOfParty);
		
		return "votepage";
		
	}
	
	@RequestMapping("/addvote")
	public String receiveVote(Model model, @RequestParam("id") Long id) {
		PartyOption partyOption= paOpDao.findById(id).get();
		
		if(partyOption.getVotes() == null) {
			partyOption.setVotes(0);
		}
		partyOption.setVotes(partyOption.getVotes()+1);
		 System.out.println( partyOption);
		 paOpDao.save(partyOption);
		return ("redirect:/votepage");
	}
	
	@RequestMapping("/addOption")
	public String addOption(PartyOption partyOption) {
	     paOpDao.save(partyOption);
		return ("redirect:/votepage");
	}
	
	@RequestMapping("/save-rsvp")
	public String addRsvp( Rsvp rsvp) {
			rsvpDao.save(rsvp);
		 
		return ("redirect:/");
	}
	
	@RequestMapping("/reviewpage")
	public String reveiw(Model model) {
		List<PartyOption> listOfParty= paOpDao.findAll(Sort.by(Direction.DESC,"votes"));
		model.addAttribute("party", listOfParty);
		
		return "reviewpage";
		
	}
	
	@RequestMapping ("/party-details")
	public String showDetails(Model model, @RequestParam("id") Long id) {
		
		Party party= partyDao.findById(id).get();
		 //Rsvp partyGoers= RsvpDao.findByPartyId(id);
		
	     //System.out.println(partyGoers);
		model.addAttribute("party", party);
		
		
		return("party-details");
	}

}
