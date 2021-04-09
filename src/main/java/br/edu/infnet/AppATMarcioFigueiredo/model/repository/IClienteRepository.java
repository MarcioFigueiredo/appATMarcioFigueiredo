package br.edu.infnet.AppATMarcioFigueiredo.model.repository;

import java.util.List;

import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import br.edu.infnet.AppATMarcioFigueiredo.model.negocio.Cliente;

@Repository
public interface IClienteRepository extends CrudRepository<Cliente, Integer> {
	
	@Query("from Cliente e where e.cliente.id=:id")
	List<Cliente>obterLista(Integer id, Sort by);

}
