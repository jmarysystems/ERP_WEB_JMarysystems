package br.com.jmary.filtro;

import acesso.Administrador_de_Acessos;
import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author pc
 */
//TODAS as requisições para a nossa aplicação devem ser filtradas (@WebFilter("/*")).
@WebFilter("/admin/*")
public class FiltroSeguranca implements Filter {   
        
    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
                
        try{
            Administrador_de_Acessos siscomHelper = new Administrador_de_Acessos();
            
            siscomHelper.setRequest( (HttpServletRequest)request );
            InterfaceCommand comando = siscomHelper.getCommand(); 
            String destino = null; try{ destino = (String) comando.execute( (HttpServletRequest)request, (HttpServletResponse)response ); } catch (Exception e) {}
            if(destino == null)            
                chain.doFilter(request, response);
            else            
                ((HttpServletResponse)response).sendRedirect( destino );
        
        } catch (IOException | ServletException e) { }
    }
    
    public void init(FilterConfig filterConfig) {}

    public void destroy() { }
        
}
