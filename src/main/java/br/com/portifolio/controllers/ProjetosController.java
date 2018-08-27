package br.com.portifolio.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.portifolio.daos.ProjetoDAO;
import br.com.portifolio.infra.FileSaver;
import br.com.portifolio.models.Projeto;
import br.com.portifolio.validation.ProjetoValidation;

@Controller
public class ProjetosController {
	
	@Autowired
	private ProjetoDAO projetoDao;
	
	@Autowired
	private FileSaver fileSaver;
	
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		
	binder.addValidators(new ProjetoValidation());
		
	}
	
	
	@RequestMapping("/projetos/form")
	public ModelAndView form(Projeto projeto) {
		ModelAndView modelAndView = new ModelAndView("projetos/form");
		return modelAndView ;
	}
	
	
	@RequestMapping(value="/projetos",method=RequestMethod.POST)
	@CacheEvict(value="projetosHome", allEntries=true)
	public ModelAndView gravar( MultipartFile anexo, @Valid Projeto projeto, BindingResult result, RedirectAttributes redirectAttributes ) {
		
		
		if(result.hasErrors()) {
			return form(projeto);
		}
		
		
		String path = fileSaver.write("pasta-anexos", anexo);
		projeto.setAnexoPath(path);
		
		projetoDao.gravar(projeto);
		
		redirectAttributes.addFlashAttribute("sucesso", "Projeto Cadastrado com sucesso!");
		return new ModelAndView("redirect:projetos"); 
	}
	
	
	@RequestMapping(value="/projetos", method=RequestMethod.GET)
	public ModelAndView listar() {
	  List<Projeto> projetos = projetoDao.listar();
	  ModelAndView modelAndView = new ModelAndView("projetos/lista");
	  modelAndView.addObject("projetos", projetos);
	  
	  return modelAndView;
	}
	
	@RequestMapping("projetos/detalhe/{id}")
	public ModelAndView detalhe(@PathVariable("id")  Integer id) {
		ModelAndView modelAndView = new ModelAndView("projetos/detalhe");
		Projeto projeto = projetoDao.find(id);
		modelAndView.addObject("projeto", projeto);
		return modelAndView;
		
	}
	

}
