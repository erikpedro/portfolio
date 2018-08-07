package br.com.portifolio.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.portifolio.daos.ProjetoDAO;
import br.com.portifolio.models.Projeto;

@Controller
public class ProjetosController {
	
	@Autowired
	private ProjetoDAO projetoDao;
	
	@RequestMapping("/projetos/form")
	public String form() {
		return "projetos/form";
	}
	
	
	@RequestMapping("/projetos")
	public String gravar( Projeto projeto) {
		System.out.println(projeto);
		projetoDao.gravar(projeto);
		return "projetos/ok";
	}
	

}
