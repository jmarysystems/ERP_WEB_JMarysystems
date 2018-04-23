/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package acesso;

import br.com.jmary.filtro.InterfaceCommand;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author pc
 */
public class Acesso_Nao_Autorizado implements InterfaceCommand {

    @Override
    public String execute( HttpServletRequest request, HttpServletResponse response ) {
        
        String paginasolicitada = ""; try{ paginasolicitada = (String) request.getParameter("paginasolicitada").trim(); } catch (Exception e) {}
        try {   
            String cmd = null; try{ cmd = (String) request.getParameter("cmd").trim(); } catch (Exception e) {}            
            
            ((HttpServletRequest)request).getSession().setAttribute("mensagem1", "Usuário sem autorização de acesso a "+cmd );
             
            System.out.println( "Acesso_Nao_Autorizado---Acesso_Nao_Autorizado----Acesso_Nao_Autorizado---- paginasolicitada " + paginasolicitada );             
        }catch(Exception e){
            ((HttpServletRequest)request).getSession().setAttribute("mensagem1", "Problemas em executar Acesso_Nao_Autorizado(): "+e.getMessage() );	
        }
        
        return "../../index.jsp";
    }
    
}