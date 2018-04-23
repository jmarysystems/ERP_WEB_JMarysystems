package br.com.jmary.filtro;

import java.io.IOException;
import java.util.List;
import javax.persistence.Query;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import jpa.JPAUtil;
import usuario.Usuario;

/**
 *
 * @author pc
 */
public class Home extends HttpServlet {

    /**
     * @param request servlet request
     * @param response servlet response
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {        
        try {            
            String login = (String) request.getParameter("login").trim();
            String senha = (String) request.getParameter("senha").trim();
            
            try{ System.out.println("IP: " + request.getRemoteAddr()); }catch(Exception e){}
            
            Usuario UsuarioNew = null;
            
            try { 
                Query q = JPAUtil.em().createNativeQuery( "SELECT * FROM SCHEMAJMARY.USUARIO WHERE LOGIN = ?", usuario.Usuario.class );
                q.setParameter(1, login );
            
                List<usuario.Usuario> ListUsuario = q.getResultList();
                for (Usuario ListUsuario1 : ListUsuario) { UsuarioNew = ListUsuario1; break; }
            }catch(Exception e){
                request.setAttribute("mensagem1", "ERRO INESPERADO NA COMUNICAÇÃO COM O BANCO DE DADOS! Query" );
                request.setAttribute("mensagem2", "ERRO: "+e.getMessage());
                response.sendRedirect( "../index.jsp" );
            }
                                    
            if( UsuarioNew == null || !UsuarioNew.getSenha().equals(senha) ) {
                    
                request.getSession().setAttribute("mensagem1", "LOGIN OU SENHA INVÁLIDOS!"); 
                request.getSession().setAttribute("mensagem2", "Tente Novamente - HOME!"); 
                response.sendRedirect( "../index.jsp" ); 
            }
            else{                     
                     
                if( UsuarioNew.getPermitiracesso() == true ) {

                    String paginasolicitada = ""; try{ paginasolicitada = (String) request.getParameter("paginasolicitada").trim(); } catch (Exception e) {}
                                        
                    //Verificar se o usuário tem acesso a página solicitada
                    /*
                    Query qX = JPAUtil.em().createNativeQuery( "SELECT * FROM SCHEMAJMARY.ACESSO WHERE ID_USUARIO = ?", acesso.Acesso.class );
                    qX.setParameter(1, UsuarioNew.getId() );
                    
                    Acesso AcessoNew = null; List<acesso.Acesso> ListAcesso = qX.getResultList();
                    for (Acesso ListAcesso1 : ListAcesso) { AcessoNew = ListAcesso1; break; }
                    */
                    
                    request.getSession().setAttribute( "usuario", UsuarioNew );
                    
                    response.sendRedirect( paginasolicitada );
                    //response.encodeURL("caixa.jsp");
                    System.out.println( "Usuario Liberado ***** - Home -" + UsuarioNew.getLogin() + " - " + UsuarioNew.getSenha() + " paginasolicitada: " + paginasolicitada );
                }
                else{
                    
                    request.getSession().setAttribute("mensagem1", "Usuário sem autorização de acesso ao sistema"); 
                    request.getSession().setAttribute("mensagem2", "Solicite ajuda do administrador!"); 
                    request.getSession().setAttribute("mensagem3", "Home"); 
                    response.sendRedirect( "../index.jsp" );
                }

            }
                        
        }catch(Exception e){
            request.setAttribute("mensagem1", "ERRO INESPERADO NA COMUNICAÇÃO COM O BANCO DE DADOS!" );
            request.setAttribute("mensagem2", "ERRO: "+e.getMessage());
            response.sendRedirect( "WebContatos/index.jsp" );
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
