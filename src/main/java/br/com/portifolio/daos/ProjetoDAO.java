package br.com.portifolio.daos;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import br.com.portifolio.models.Projeto;

@Repository
@Transactional
public class ProjetoDAO {

@PersistenceContext
 private EntityManager manager;
	
	 public void gravar(Projeto projeto){
		manager.persist(projeto);
	}

	public List<Projeto> listar() {
		return manager.createQuery("select p from Projeto p", Projeto.class).getResultList();
	}

	public Projeto find(Integer id) {
		return manager.find(Projeto.class, id);
	}
	
	public void remover(Integer id) {
        manager.remove(find(id));
    }

	public void update(Projeto projeto) {
		manager.merge(projeto);
	}
	
	
	
}
