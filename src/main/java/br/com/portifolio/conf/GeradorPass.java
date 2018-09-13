package br.com.portifolio.conf;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

import br.com.portifolio.infra.S3Service;

public class GeradorPass {
	
	@Autowired
	private S3Service s3Service;
	

	public static void main(String[] args) {
		String password = "erikpedro"; 
	    PasswordEncoder passwordEncoder = new BCryptPasswordEncoder(); 
	    String encodedPassword = passwordEncoder.encode(password);  
	    System.out.print(encodedPassword);
	   
	    
	}
	

	public void run (){
		s3Service.uploadFile("/portfolio/src/main/webapp/resources/images/avatar.jpg");
		System.out.println("Foi");
	}
	
	

}
