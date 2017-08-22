package br.ufc.qx.tizeeter.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import br.ufc.qx.tizeeter.model.ConnectionFactory;

public class InjectConnectionFilter implements Filter{
	
	private ConnectionFactory factory;
	
	public InjectConnectionFilter() {
		setFactory(new ConnectionFactory());
	}

	public ConnectionFactory getFactory() {
		return factory;
	}

	public void setFactory(ConnectionFactory factory) {
		this.factory = factory;
	}
	
	@Override
	public void destroy() {
		
	}
	
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		
	}

}
