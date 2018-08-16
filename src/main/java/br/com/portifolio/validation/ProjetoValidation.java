package br.com.portifolio.validation;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import br.com.portifolio.models.Projeto;

public class ProjetoValidation implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {
		return Projeto.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		ValidationUtils.rejectIfEmpty(errors, "projeto", "field.required");
		ValidationUtils.rejectIfEmpty(errors, "descricao", "field.required");
		ValidationUtils.rejectIfEmpty(errors, "linkprojeto", "field.required");
		
	}


}
