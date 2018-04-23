<%@page import="java.util.ArrayList"%>
<%@page import="javax.persistence.Query"%>
<%@page import="jpa.JPAUtil"%>
<%@page import="cliente.Clientes"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

    <!-- -->
    <table width="100%" class="pt10">   
        <thead>
            <tr>                   
                <td>   
                    <table>   
                        <tr>  
                            <td align="center" width="170px" style="vertical-align: central;" class="festilobold boxtitulosombra h20px backtitulo mousepointer">   
                                PESQUISAR CLIENTES
                            </td>    
                        </tr>
                    </table>
                </td>
            </tr> 
            
            <tr>  
                <td align="center" class="wpercent100 backcinza"> <div class="pt10">   
                    <table id="pesquisar" class="backcinza">   
                        <tr>
                            <td align="center" width="20px" class=""> 
                                <label>Pesquisar</label>                                                                                               
                            </td>
                                                        
                            <td align="center" class="">
                                <!-- PESQUISAR -->
                                <SPAN>
                                    <form id="form_pesquisar" action="Home" class="listsn pf0 dispin" method="post" >
                                        <input type="hidden" name="cmd" value="pesquisar_cliente"></input>
                                        <input type="hidden" name="paginasolicitada" value="../../contato/contatos_search/contatos_search.jsp"></input> 
                                        <input type="text" name="textopesquisado" value="${textopesquisado}" class="w300px h30px" ></input>
                                        <input onclick="envia_form_generico('#form_pesquisar');" class="mousepointer h30px" type="image" src="../../../utilidades/utilidades_imagens/pesquisar.png" title="Pesquisar">              
                                    
                                        <select id="pesquisar_por" name="pesquisar_por" style=" width:170px; height:30px; margin:0; padding:0; background-color:#FFFFFF;" >
                                            <option value="nome">          Pesquisar por - Nome     </option>
                                            <option value="id">            Pesquisar por - Id       </option>
                                            <option value="telefone" >     Pesquisar por - Telefone </option>
                                        </select>
                                    </form>     
                                </SPAN>    
                                <!-- PESQUISAR -->             
                            </td>

                            <td align="right" class="">
                                <img id="impressora" onclick="imprimirx();" class="mousepointer h22px" title="Imprimir"  src="../../../utilidades/utilidades_imagens/print_2.png" /> 
                                
                                <script>                                    
                                    function imprimirx() {
                                        var x = document.getElementById("input_variavel_de_pesquisa").value;
                                        variavel_de_pesquisa = x;
                                    }
                                </script>
                            </td>    
    
                        </tr>    
                    </table>
                </div></td> 
            </tr> 
        </thead>                
    </table>
    <!-- -->	
    <h3>${mensagem1}</h3>
    
    <div align="center" style="overflow: auto; width: 100%;"> 
        
        <jsp:include page="tabela_pesquisa_por_nome.jsp"></jsp:include>
        
    </div>        
    
    
    


     