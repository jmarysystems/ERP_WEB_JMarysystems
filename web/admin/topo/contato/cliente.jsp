<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>.:JMarySystems:.</title>
        <link rel="stylesheet" type="text/css" media="screen" href="../../../css/estrutura.css" /> 
        <link rel="stylesheet" type="text/css" media="screen" href="../../../css/login.css" /> 
        
        <script type="text/javascript" src="../../../script/jquery.js"></script>
        <script type="text/javascript" src="../../../script/jquery.mask.js"></script>
        
        <link rel="stylesheet" type="text/css" media="screen" href="../../../css/cliente.css" /> 
        <script type="text/javascript" src="../../../script/cliente.js"></script>

    </head>
    <body class='pf0 mf0 backcinza'>
        
<!-- 
-0
-1
-2
- #### INÍCIO TUDO #### --> 
<div id="tudo">
<!-- 
-0
-1
-2    
-->         
        
        <img id="img_logo" title="JMary Systems"                 
            src="../../../utilidades/utilidades_imagens/logocangaco.png" 
            onMouseOver="this.src='../../../utilidades/utilidades_imagens/logocangaco.png'"
            onMouseOut="this.src='../../../utilidades/utilidades_imagens/logocangaco.png'"
        > 
        
        <!-- #### TOPO INICIO ####
        -0
        -1
        -->
        <table id="tb_topo_login" cellpadding="0" cellspacing="0">
	    <tr>
                <td id="tb_topo_login_tr1_td1"> 
                    <!-- -->
                    <table class="wpercent100" cellpadding="0" cellspacing="0"> <tr>  
                        <td class="w210px"> </td> 
                        <td class="w75px">  
                            <a class="menu" href=""
                               title="Contatos" > <font color="#FFFFFF"> Contatos </font> </a>
                        </td>         
                        <td class="pl10 w75px">
                            <a class="menu" href=""
                                title="Produtos" > <font color="#FFFFFF"> Produtos </font></a>
                        </td>   
                        <td class="pl10 w75px">
                            <a class="menu" href=""
                                title="Compras" > <font color="#FFFFFF"> Compras </font></a>
                        </td> 
                        <td class="pl10 w75px">
                            <a class="menu" href=""
                                title="Vendas" > <font color="#FFFFFF"> Vendas </font></a>
                        </td> 
                        <td class="pl10 w75px">
                            <a class="menu" href=""
                                title="Financeiro" > <font color="#FFFFFF"> Financeiro </font></a>
                        </td> 
                        <td class="pr20">
                            <table align="right" class="" cellpadding="0" cellspacing="0"> <tr>  
                                <td>     
                                    <a class="menu" href="Javascript:history.back(-1)" 
                                       onclick="window.close()" title="Sair"  > <font color="#FFFFFF">SAIR </font></a>
                                </td> 
                                <td> 
                                    <a class="menu ml2" href="Javascript:history.back(-1)" 
                                       onclick="window.close()" title="Sair" > <font color="#FFFFFF">X  </font></a>   
                                </td>     
                            </tr> </table>     
                        </td> 
                    </tr> </table> 
                    <!-- -->
                </td>
	    </tr>	
            <tr>
                <td class="pf0 mf0 backcinza">
                    <table class="wpercent100" cellspacing="0"> 
                        <tr>  
                            <td class="w190px"> </td>
                            
                            <!-- BOTÕES LINHA 1 -->
                            <td > 
                                <!-- CLIENTES -->
                                <SPAN> <a class="menu" href="" title="Clientes" >    
                                <button class="botmSelec botmSelec2" type="button">Clientes</button> </a> </SPAN> 
                                <!-- CLIENTES -->
                                
                                <!-- FORNECEDORES -->
                                <SPAN> <a class="menu" href="" title="Fornecedores" >    
                                <button class="botm2" type="button">Fornecedores</button> </a> </SPAN> 
                                <!-- FORNECEDORES -->
                                
                                <!-- TRANSPORTADORES -->
                                <SPAN> <a class="menu" href="" title="Transportadores" >    
                                <button class="botm2 mt10" type="button">Transportadores</button> </a> </SPAN> 
                                <!-- TRANSPORTADORES -->
                            </td>  
                            <!-- BOTÕES LINHA 1 -->
                            
                            <!-- FORMULARIO BOTAO PAGSEGURO -->
                            <td rowspan="4" class="w210px">
                                <form action="https://pagseguro.uol.com.br/checkout/v2/donation.html" method="post"
                                      class="floatr pr20" style="vertical-align: central;"
                                      >
                                    <!-- NÃO EDITE OS COMANDOS DAS LINHAS ABAIXO -->
                                    <input type="hidden" name="currency" value="BRL" />
                                    <input type="hidden" name="receiverEmail" value="jmarysystems@gmail.com" />
                                    <input type="image" src="../../../utilidades/utilidades_imagens/doacaojmary.gif" name="submit" alt="Pague com PagSeguro - é rápido, grátis e seguro!" />
                                </form>
                            </td>
                            <!-- FORMULARIO BOTAO PAGSEGURO -->
                        </tr> 
                        <tr> 
                            <td class="border-bottom_1px_preta"> </td> 
                            <td class="border-bottom_1px_preta"> </td>
                        </tr>
                        <tr>  
                            <td class="w190px"> </td>
                            
                            <!-- BOTÕES LINHA 2 -->
                            <td> 
                                <!-- HOME -->
                                <button class="botmSelec botmSelec2" type="button">Home</button> 
                                <!-- HOME -->
                                
                                <!-- CADASTRAR -->                                    
                                <SPAN>
                                    <form id="cadastrar_cliente_acesso" action="Home" class="listsn pf0 dispin" method="post" >
                                        <input type="hidden" name="cmd" value="cadastrar_cliente_acesso"></input>
                                        <input type="hidden" name="paginasolicitada" value="../../contato/contato_new/contato_new.jsp"></input> 
                                        <button class="botm2 mt5" onclick="envia_form_generico('#cadastrar_cliente_acesso');">Cadastrar</button>
                                    </form>  
                                </SPAN> 
                                <!-- CADASTRAR -->
                                
                                <!-- PESQUISAR -->
                                <SPAN>
                                    <form id="pesquisar_cliente_acessar" action="Home" class="listsn pf0 dispin" method="post" >
                                        <input type="hidden" name="cmd" value="pesquisar_cliente_acessar"></input>
                                        <input type="hidden" name="paginasolicitada" value="../../contato/contatos_search/contatos_search.jsp"></input> 
                                        <input type="hidden" name="textopesquisado" value="${textopesquisado}"></input>
                                        <button class="botm2 mt5" onclick="envia_form_generico('#pesquisar_cliente_acessar');">Pesquisar</button>
                                    </form>     
                                </SPAN> 
                                <!-- PESQUISAR -->
                            </td>  
                            <!-- BOTÕES LINHA 2 -->

                        </tr>                         
                        <tr>  
                            <td class="w190px"> </td>
                            
                            <!-- BOTÕES LINHA 3 -->
                            <td>  
                                <!-- AJUDA -->
                                <button class="botm2" type="button" >Ajuda</button>  
                                <!-- AJUDA -->
                            </td>  
                            <!-- BOTÕES LINHA 3 -->
 
                        </tr> 
                    </table>     
                </td> 
	    </tr>
	</table>    
        <div class="mb6"></div>
        <!-- 
        -0
        -1
        -2
        - #### TOPO FIM #### -->  
        
<!-- 
-0
-1
-2
- #### INÍCIO CENTRAL #### --> 
<div id="central">
<!-- 
-0
-1
-2    
--> 

        
        <!-- 
        -0
        -1
        -2
        -3
        -4
        -5
        -6
        -7
        -8
        -9
        -->
        <table align="center" width="50%" height="50%" border="0" cellpadding="0" cellspacing="5"> <tbody>
            <tr>
                <td align="center" class="alimtxttopov backbco" >
                    <img width="50%" height="50%" title="JMarySystems" src="../../../utilidades/utilidades_imagens/logocangaco_gde.png"
                </td>
            </tr>
        </tbody></table> 
        <!-- 
        -0
        -1
        -2
        -3
        -4
        -5
        -6
        -7
        -8
        -9
        -->

        
<!-- 
-0
-1
-2
- #### FIM CENTRAL #### --> 
</div>
<!-- 
-0
-1
-2    
--> 

    <jsp:include page="../../../status.jsp"></jsp:include>

<!-- 
-0
-1
-2
- #### FIM TUDO#### --> 
</div>
<!-- 
-0
-1
-2    
--> 
        
        
    </body>
</html>
