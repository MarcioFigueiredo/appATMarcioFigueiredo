package br.edu.infnet.AppATMarcioFigueiredo.model.repository;

import java.util.List;

import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import br.edu.infnet.AppATMarcioFigueiredo.model.negocio.Pedido;

@Repository
public interface IPedidoRepository extends CrudRepository<Pedido, Integer> {
	
	@Query("from Pedido e where e.usuario.id=:id")
	List<Pedido>obterLista(Integer id, Sort by);

}
