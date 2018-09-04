package br.com.portifolio.conf;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpMethod;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.annotation.web.servlet.configuration.EnableWebMvcSecurity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import br.com.portifolio.daos.UsuarioDAO;

@EnableWebMvcSecurity
public class SpringSecurityConfiguration extends WebSecurityConfigurerAdapter{
	
	@Autowired
	private UsuarioDAO usuarioDao;




	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.authorizeRequests()
		.antMatchers("/projetos/form").hasRole("ADMIN")
		.antMatchers(HttpMethod.POST, "/projetos").hasRole("ADMIN")
		.antMatchers(HttpMethod.GET, "/projetos").hasRole("ADMIN")
		.antMatchers("/projetos/**").permitAll()
		.antMatchers("/**").permitAll()
		.anyRequest().authenticated()
		.and().formLogin();
		
	}
	
	
	
	
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(usuarioDao)
		.passwordEncoder(new BCryptPasswordEncoder());
	}
	
	
	
	

}
