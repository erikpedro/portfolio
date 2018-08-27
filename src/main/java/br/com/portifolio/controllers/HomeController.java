package br.com.portifolio.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.portifolio.daos.ProjetoDAO;
import br.com.portifolio.models.Projeto;

@Controller
public class HomeController {

	@Autowired
	private ProjetoDAO projetoDao;

	@RequestMapping("/")
	@Cacheable(value="projetosHome")
	public ModelAndView index() {
		List<Projeto> projetos = projetoDao.listar();
		ModelAndView modelAndView = new ModelAndView("home");
		modelAndView.addObject("projetos", projetos);
		return modelAndView;
	}
}
