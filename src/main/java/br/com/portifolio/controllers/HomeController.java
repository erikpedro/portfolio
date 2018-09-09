package br.com.portifolio.controllers;

import java.util.Arrays;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import br.com.portifolio.daos.ProjetoDAO;
import br.com.portifolio.daos.UsuarioDAO;
import br.com.portifolio.models.Projeto;
import br.com.portifolio.models.Role;
import br.com.portifolio.models.Usuario;

@Controller
public class HomeController {

	@Autowired
	private ProjetoDAO projetoDao;
	@Autowired
	private UsuarioDAO usuarioDAO;

	@RequestMapping("/")
	@Cacheable(value="projetosHome")
	public ModelAndView index() {
		List<Projeto> projetos = projetoDao.listar();
		ModelAndView modelAndView = new ModelAndView("home");
		modelAndView.addObject("projetos", projetos);
		return modelAndView;
	}
	
	@ResponseBody
	@Transactional
	@RequestMapping("/mors-exspiravit")
	public String urlAdmin() {
		Usuario usuario = new Usuario();
		usuario.setNome("Erik Pedro");
		usuario.setEmail("erikpedro@gmail.com");
		usuario.setSenha("$2a$10$CKUuTwXlWnv/cFxCZonGtOgB3CYgsC5I8XWDi6yqSx17qVczJbe/K");
		usuario.setRoles(Arrays.asList(new Role("ADMIN")));
		
		
		usuarioDAO.gravar(usuario);
		
		
		return "Mors Exspiravit Executado";
		
	}
	
	
	
}
