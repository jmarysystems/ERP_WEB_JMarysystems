<%@page import="java.util.ArrayList"%>
<%@page import="javax.persistence.Query"%>
<%@page import="jpa.JPAUtil"%>
<%@page import="cliente.Clientes"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

    <table align="center" id="cliente_tabela_home" class="pf0 mf0" border="0" cellpadding="10" cellspacing="0">
        <thead> 
            <tr class="backred2 fbranco festilobold" > <td align="center"> Ações </td> <td>ID</td> <td>NOME</td> <td>TELEFONE</td> <td>ENDEREÇO</td> <td>NÚMERO</td> <td>EMAIL</td> <td>REFERÊNCIA</td> <td>OBSERVAÇÃO</td> </tr>
        </thead>
           
        <tbody>
        <%
            String cortbody1 = "backama";
            String cortbody2 = "backbco";
        List<cliente.Clientes> list = new ArrayList();
        Query q = null;
        
        ////////////////////////// A Magica acontece aqui ( Mudança para outra consulta )
        try{
            String pesquisar_por = ""; try{ pesquisar_por = (String) request.getSession().getAttribute("pesquisar_por"); } catch (Exception e) {} 
            String textopesquisado = ""; try{ textopesquisado = (String) request.getSession().getAttribute("textopesquisado"); } catch (Exception e) {} 
            System.out.println("textopesquisado jsp - " + textopesquisado + " - " + pesquisar_por);
            
            if( pesquisar_por.equals("nome") || pesquisar_por.equals("") ) {
                if( textopesquisado.equals("") ) {
                    q = JPAUtil.em().createNativeQuery( "SELECT * FROM SCHEMAJMARY.CLIENTES", cliente.Clientes.class );
                }
                else{
                    q = JPAUtil.em().createNativeQuery( "SELECT * FROM SCHEMAJMARY.CLIENTES WHERE NOME LIKE ?", cliente.Clientes.class );
                    q.setParameter(1, "%"+textopesquisado.toUpperCase()+"%");
                }
            }
            else if( pesquisar_por.equals("telefone") ) {
                if( textopesquisado.equals("") ) {
                    q = JPAUtil.em().createNativeQuery( "SELECT * FROM SCHEMAJMARY.CLIENTES", cliente.Clientes.class );
                }
                else{
                    q = JPAUtil.em().createNativeQuery( "SELECT * FROM SCHEMAJMARY.CLIENTES WHERE TELEFONE LIKE ?", cliente.Clientes.class );
                    q.setParameter(1, textopesquisado.toUpperCase()+"%");
                }
            }
        } catch (Exception e) {}
        /////////////////////////// A Magica acontece aqui ( Mudança para outra consulta )
        
        if( q != null ){ list = q.getResultList(); }
                
	for (int i = 0; i < list.size(); i++){ if( cortbody1.equals( cortbody2 ) ){ cortbody1 = "backama"; }else{ cortbody1 = cortbody2; }
	%>
         
            <tr class=" <%=cortbody1%> " id="<%=list.get(i).getId()%>" 
                  onMouseOver="this.className='backazulcla'" 
                  onMouseOut="this.className='<%=cortbody1%>'"
                  onclick="this.className='backverdcla'"
            >
                <td class="w75px alimtxtcenterh"> 
                    <!-- EDITAR -->                                    
                        <SPAN>
                            <form id="form_editar<%=list.get(i).getId()%>" action="Home" class="listsn pf0 dispin" method="post" >
                                <input type="hidden" name="cmd" value="editar_cliente_acessar"></input>
                                <input type="hidden" name="paginasolicitada" value="../../contato/contato_new/contato_editar.jsp"></input> 
                                <input onclick="envia_form_generico('#form_editar<%=list.get(i).getId()%>');" type="image" src="../../../utilidades/utilidades_imagens/editar.png" title="Editar">              
                            </form>  
                        </SPAN> 
                        <!-- EDITAR -->
                                
                        <!-- EXCLUIR -->
                        <SPAN>
                            <form id="form_excluir<%=list.get(i).getId()%>" action="Home" class="listsn pf0 dispin" method="post" >
                                <input type="hidden" name="cmd" value="excluir_cliente"></input>
                                <input type="hidden" name="paginasolicitada" value="../../contato/contatos_search/contatos_search.jsp"></input> 
                                <input type="hidden" name="textopesquisado" value="${textopesquisado}"></input>
                                <input type="hidden" name="iddocliente" value="<%=list.get(i).getId()%>"></input>
                                <input onclick="envia_form_generico('#form_excluir<%=list.get(i).getId()%>');" type="image" src="../../../utilidades/utilidades_imagens/delete.png" title="Excluir">              
                            </form>     
                        </SPAN>    
                        <!-- EXCLUIR -->
                </td>
                <td><%=list.get(i).getId()%></td>
	        <td><%=list.get(i).getNome()%></td>
                <td><%=list.get(i).getTelefone()%></td>
	        <td><%=list.get(i).getEndereco()%></td>
	        <td><%=list.get(i).getNumero()%></td>
	        <td><%=list.get(i).getEmail()%></td>
	        <td><%=list.get(i).getPontodereferencia()%></td>
                <td><%=list.get(i).getObservacao()%></td>
	    </tr>
        <% } %>  

        </tbody>
    </table>       
    
    
    


     