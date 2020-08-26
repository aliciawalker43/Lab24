package GC.Lab24.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import GC.Lab24.Entity.Party;

public interface PartyDao extends JpaRepository<Party, Long> {

	
	
}
