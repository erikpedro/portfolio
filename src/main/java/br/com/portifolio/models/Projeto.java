package br.com.portifolio.models;

import java.util.Calendar;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
public class Projeto {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	
	private String projeto;
	
	@DateTimeFormat
	private Calendar dataDeploy;
	
	private	String descricao;
	
	private String linkprojeto;
	
	private String anexoPath;

	public String getProjeto() {
		return projeto;
	}

	public void setProjeto(String projeto) {
		this.projeto = projeto;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	
	
	public String getLinkprojeto() {
		return linkprojeto;
	}
	
	public void setLinkprojeto(String linkprojeto) {
		this.linkprojeto = linkprojeto;
	}
	

	public Calendar getDataDeploy() {
		return dataDeploy;
	}

	public void setDataDeploy(Calendar dataDeploy) {
		this.dataDeploy = dataDeploy;
	}
	
	@Override
	public String toString() {
		return "Projeto [projeto=" + projeto + ", descricao=" + descricao + "]";
	}

	public String getAnexoPath() {
		return anexoPath;
	}

	public void setAnexoPath(String anexoPath) {
		this.anexoPath = anexoPath;
	}

	
	
	

}
