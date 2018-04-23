/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cliente_search;

import br.com.jmary.filtro.InterfaceCommand;
import cliente.Clientes;
import java.util.List;
import javax.persistence.Query;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import jpa.DAOGenericoJPA;
import jpa.JPAUtil;

/**
 *
 * @author pc
 */
public class Cliente_Search implements InterfaceCommand {

    @Override
    public String execute( HttpServletRequest request, HttpServletResponse response ) {
        
        String paginasolicitada = ""; 
        try {   
            try{                                
                paginasolicitada = (String) request.getParameter("paginasolicitada").trim(); } catch (Exception e) {}
                String cmd = ""; try{ cmd = (String) request.getParameter("cmd").trim(); } catch (Exception e) {}                
        
                // pesquisar_por
                String pesquisar_por = ""; try{ pesquisar_por = (String) request.getParameter("pesquisar_por").trim(); } catch (Exception e) {}        
                if( !pesquisar_por.equals("") ) {
                    request.getSession().setAttribute( "pesquisar_por", pesquisar_por );
                    System.out.println("pesquisar_por - " + pesquisar_por);    
                }
                else{
                    request.getSession().setAttribute( "pesquisar_por", "" );
                }
                // pesquisar_por
                
                // Texto Pesquisado
                String textopesquisado = ""; try{ textopesquisado = (String) request.getParameter("textopesquisado").trim(); } catch (Exception e) {}        
                if( !textopesquisado.equals("") ) {
                    request.getSession().setAttribute( "textopesquisado", textopesquisado );
                    System.out.println("textopesquisado - " + textopesquisado);    
                }
                else{
                    request.getSession().setAttribute( "textopesquisado", "" );
                }
                // Texto Pesquisado
                
                // Excluir Cliente
                String iddocliente = ""; try{ iddocliente = (String) request.getParameter("iddocliente").trim(); } catch (Exception e) {}        
                if( !iddocliente.equals("") ) {
                    int IDSELECIONADA = Integer.parseInt( iddocliente );
                    //////////////////////////////////////////////////////////////////////////////////////////
                    Clientes Clientes = new Clientes();
                    
                    Query q = JPAUtil.em().createNativeQuery( "SELECT * FROM SCHEMAJMARY.CLIENTES WHERE ID = ?", Clientes.class );
                    q.setParameter(1, IDSELECIONADA);   
                    
                    List<Clientes> list = q.getResultList();
                    
                    for (int i = 0; i < list.size(); i++){
                        Clientes = list.get(i);
                    } 
                    
                    DAOGenericoJPA DAOGenericoJPA = new DAOGenericoJPA( Clientes, JPAUtil.em()); 
                    DAOGenericoJPA.excluir();
                    //////////////////////////////////////////////////////////////////////////////////////////
                }
                // Excluir Cliente
                                                
        }catch(Exception e){
            ((HttpServletRequest)request).getSession().setAttribute("mensagem1", "Problemas em tentar acessar o Banco de Dados: "+e.getMessage() );	
        }
        
        return paginasolicitada;
    }
    
}