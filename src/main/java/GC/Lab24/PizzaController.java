package GC.Lab24;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import GC.Lab24.Entity.PartyOption;
import GC.Lab24.dao.PartyDao;
import GC.Lab24.dao.PartyOptionDao;


@Controller
public class PizzaController {
	
	@Autowired
	private PartyOptionDao paOpDao;
	@Autowired
	private PartyDao partyDao;
	
	@RequestMapping("/")
	public String showHompage(Model model) {
		
		return "homepage";
	}

	@RequestMapping("/votepage")
	public String vote(Model model) {
		List<PartyOption> listOfParty= paOpDao.findAll();
		model.addAttribute("party", listOfParty);
		return "votepage";
		
	}
	
	@RequestMapping("/{id}")
	public String receiveVote(Model model, @RequestParam("id") Long id) {
		int count = paOpDao.findById(id).getVotes();
		   paOpDao.setVotes(count ++);
		return ("redirect: /votepage");
	}
	
	@RequestMapping("/addOption")
	public String addOption(PartyOption partyOption) {
	
		paOpDao.save(partyOption);
		return ("redirect:/votepage/");
	}
	
	@RequestMapping("/reviewpage")
	public String reveiw() {
		return "reveiwpage";
		
	}
}
