package br.com.portifolio.conf;

import org.springframework.http.HttpMethod;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.annotation.web.servlet.configuration.EnableWebMvcSecurity;

@EnableWebMvcSecurity
public class SpringSecurityConfiguration extends WebSecurityConfigurerAdapter{
	
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

}
