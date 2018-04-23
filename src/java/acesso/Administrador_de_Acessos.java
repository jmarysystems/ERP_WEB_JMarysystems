/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package acesso;

import br.com.jmary.filtro.InterfaceCommand;
import cliente_new.Cliente_New;
import cliente_search.Cliente_Search;
import java.util.HashMap;
import java.util.List;
import javax.persistence.Query;
import javax.servlet.http.HttpServletRequest;
import jpa.JPAUtil;
import usuario.Usuario;

/**
 *
 * @author pc
 */
public class Administrador_de_Acessos {
    
    private HashMap<String, InterfaceCommand> mapaComandos;
    private HttpServletRequest request;
    
    public Administrador_de_Acessos(){
        
        mapaComandos = new HashMap<String, InterfaceCommand>();
        
        mapaComandos.put("acesso_nao_autorizado", new Acesso_Nao_Autorizado());
        
        mapaComandos.put("cadastrar_cliente_acesso", new Cliente_New());
        mapaComandos.put("cadastrar_cliente_salvar", new Cliente_New());
        
        mapaComandos.put("pesquisar_cliente_acessar",new Cliente_Search());
        mapaComandos.put("pesquisar_cliente",        new Cliente_Search());
        mapaComandos.put("excluir_cliente",          new Cliente_Search());
    }
        
    public InterfaceCommand getCommand(){
        String cmd = null; try{ cmd = (String) request.getParameter("cmd").trim(); } catch (Exception e) {}
        try{ 
            if(cmd == null || request.getSession().getAttribute("usuario") == null) return null; 
        }catch( Exception e ){ return null; }

        try{            
            //Verificar se o usuário tem acesso a página solicitada
            Usuario Usuario = null; try{ Usuario = (Usuario) ((HttpServletRequest)request).getSession().getAttribute("usuario"); } catch (Exception e) {}
            System.out.println( "cmd---cmd---cmd----cmd----cmd-----cmd-----cmd----cmd- " + cmd );
            Acesso AcessoNew = null;
                        
            Query qX = JPAUtil.em().createNativeQuery( "SELECT * FROM SCHEMAJMARY.ACESSO WHERE ID_USUARIO = ?", acesso.Acesso.class );
            qX.setParameter(1, Usuario.getId() );
                     
            List<acesso.Acesso> ListAcesso = qX.getResultList();
            for (Acesso ListAcesso1 : ListAcesso) { 
                if( ListAcesso1.getComandodoacesso().equals( cmd ) ){
                    AcessoNew = ListAcesso1; 
                    break;
                }
            }
            //O usuário tem acesso a página solicitada: Prosseguindo  
            if( AcessoNew != null ) {  
                try{ ((HttpServletRequest)request).getSession().setAttribute("mensagem1", "" ); } catch (Exception e) {}
                
                return mapaComandos.get(cmd); 
            } else{ 
                
                return mapaComandos.get("acesso_nao_autorizado"); 
            }
        }catch( Exception e ){ return null; }
    }
    
    public void setRequest(HttpServletRequest request) { this.request = request; }
    
}
