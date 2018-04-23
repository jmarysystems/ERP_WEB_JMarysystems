/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cliente_new;

import br.com.jmary.filtro.InterfaceCommand;
import cliente.Clientes;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import jpa.DAOGenericoJPA;
import jpa.JPAUtil;

/**
 *
 * @author pc
 */
public class Cliente_New implements InterfaceCommand {

    @Override
    public String execute( HttpServletRequest request, HttpServletResponse response ) {
        
        String paginasolicitada = ""; 
        String cmd = "";
        try {   
            try{ paginasolicitada = (String) request.getParameter("paginasolicitada").trim(); } catch (Exception e) {}
            try{ cmd = (String) request.getParameter("cmd").trim(); } catch (Exception e) {}

            if( cmd.equals( "cadastrar_cliente_salvar" ) ) {
                     
                Clientes Clientes = new Clientes();
            
                try{ Clientes.setNome(request.getParameter("nome").toUpperCase());                           } catch (Exception e) {}
                try{ Clientes.setEndereco(request.getParameter("endereco").toUpperCase());                   } catch (Exception e) {}
                try{ Clientes.setNumero(request.getParameter("numero").toUpperCase());                       } catch (Exception e) {}
                try{ Clientes.setEmail(request.getParameter("email").toUpperCase());                         } catch (Exception e) {}
                try{ Clientes.setPontodereferencia(request.getParameter("pontodereferencia").toUpperCase()); } catch (Exception e) {}
                try{ 
                    String fone = (String) request.getParameter("telefone").replace("(", "").replace(")", "").replace("-", "");
                    Clientes.setTelefone( fone );                   
                } catch (Exception e) {}
                try{ Clientes.setObservacao(request.getParameter("observacao").toUpperCase());               } catch (Exception e) {}

                //////////////////////////////////
                verificarParaSalvar( Clientes, request );                
                /////////////////////////////////                                
              
            }
                        
        }catch(Exception e){
            ((HttpServletRequest)request).getSession().setAttribute("mensagem1", "Problemas com a gravação: "+e.getMessage() );	
        }
        
        System.out.println( "AJAX executando chamada - paginasolicitada: " + paginasolicitada + " - " +cmd );
        return paginasolicitada;
    }
    
    private void verificarParaSalvar( Clientes Clientes, HttpServletRequest request ){
        
        if( Clientes.getNome().length() > 4 ){
        
            if( Clientes.getEndereco().length() > 4 ){
                
                ((HttpServletRequest)request).getSession().setAttribute("mensagem1", "Cliente ("+Clientes.getNome()+") gravado com sucesso!");
                salvar( Clientes );    
            }
            else{
                
                dadosInvalidos( request, "O ENDEREÇO DO CLIENTE PRECISA TER MAIS QUE 4 CARACTERES!" );
            }
        }
        else{
            
            dadosInvalidos( request, "O NOME DO CLIENTE PRECISA TER MAIS QUE 4 CARACTERES!" );
        }
    }
    
    private void dadosInvalidos( HttpServletRequest request, String str ){
        
        ((HttpServletRequest)request).getSession().setAttribute("mensagem1", str );
    }
    
    private void salvar( Clientes Clientes ){
        try{
            DAOGenericoJPA DAOGenericoJPA = new DAOGenericoJPA(Clientes, JPAUtil.em());
            DAOGenericoJPA.gravanovoOUatualizar();
        }catch(Exception e){}
    }
}
