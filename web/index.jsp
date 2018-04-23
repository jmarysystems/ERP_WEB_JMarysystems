



<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"> <!-- ISO-8859-1 -->
        <title>? ? ? ? ? ? .:JMARY..SYSTEMS:. ? ? ? ? ? ?</title>
        
        <link rel="stylesheet" type="text/css" media="screen" href="css/estrutura.css" /> 
        <link rel="stylesheet" type="text/css" media="screen" href="css/login.css" /> 
        
        <script type="text/javascript" src="script/default.js"></script>
        <script type="text/javascript" src="script/jquery.js"></script>
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
            src="utilidades/utilidades_imagens/logocangaco.png" 
            onMouseOver="this.src='utilidades/utilidades_imagens/logocangaco.png'"
            onMouseOut="this.src='utilidades/utilidades_imagens/logocangaco.png'"
        > 
        
        <!-- #### TOPO INICIO ####
        -0
        -1
        -->
        <table id="tb_topo_login" >
	    <tr>
                <td id="tb_topo_login_tr1_td1"> 
                    <!-- -->
                    <table class="wpercent100"> <tr>  
                        <td class="w210px"> </td> 
                        <td class="w146px">  
                            <a class="menu" href=""
                               title="Ciências Humanas" > <font color="#FFFFFF"> </font> </a>
                        </td>         
                        <td class="pl10 w146px">
                            <a class="menu" href=""
                                title="Ciências da Natureza" > <font color="#FFFFFF"> </font></a>
                        </td>   
                        <td class="pl10 w146px">
                            <a class="menu" href=""
                                title="Ciências da Natureza" > <font color="#FFFFFF"> </font></a>
                        </td> 
                        <td class="pr20">
                            <table align="right" class=""> <tr>  
                                <td>     
                                    <a class="menu"
                                        href="" onclick="window.close()" title="Sair"  > <font color="#FFFFFF">SAIR </font></a>
                                </td> 
                                <td> 
                                    <a class="menu"
                                        href="" onclick="window.close()" title="Sair" > <font color="#FFFFFF">X  </font></a>   
                                </td>     
                            </tr> </table>     
                        </td> 
                    </tr> </table> 
                    <!-- -->
                </td>
	    </tr>	
            <tr>
                <td class="pf0 mf0 backbco">
                    <table class="wpercent100"> <tr>  
                        <td class="ftm25px alimtxtcenterh fazult">     
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ACESSAR O SISTEMA
                        </td> 
                        <td class="ocultar">                                 
                        </td> 
                        <td class="floatr w210px pr20" style="vertical-align: central;"> 
                            <!-- INICIO FORMULARIO BOTAO PAGSEGURO -->
                            <form action="https://pagseguro.uol.com.br/checkout/v2/donation.html" method="post">
                                <!-- NÃO EDITE OS COMANDOS DAS LINHAS ABAIXO -->
                                <input type="hidden" name="currency" value="BRL" />
                                <input type="hidden" name="receiverEmail" value="jmarysystems@gmail.com" />
                                <input type="image" src="utilidades/utilidades_imagens/doacaojmary.gif" name="submit" alt="Pague com PagSeguro - é rápido, grátis e seguro!" />
                            </form>
                            <!-- FINAL FORMULARIO BOTAO PAGSEGURO -->    
                        </td>     
                    </tr> </table>     
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
        <div align="center" class="backcinza">
    <hr color="navy">
    
    <table class="wpercent100 h35px" style="color: #004080; font-size: x-small; font-family: sans-serif;" border="0" cellpadding="2" cellspacing="5" align="center" >
    <tr>
        <td align="center" style="vertical-align: central">
            <big style="color: #0000FF; font-size: 12px; font-family: sans-serif;">Sistemas Comerciais - JMarySystems - Suporte: 85 8623.8463</big>
            <br><big style="color: #0000FF; font-size: 12px; font-family: sans-serif;">
                <SPAN> <a class="decotxtnao mouseencimadecotxtnao linktipo1" href="http://jmarysystems.blogspot.com.br" title="http://jmarysystems.blogspot.com.br" >    
                                http://jmarysystems.blogspot.com.br </a> </SPAN>  
                
            </big>
        </td>
    </tr>	
    </table>
    
    </div>
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
    <div align="center">
	<form action="Home" style="width:300px; border-width:thin; border-style:dashed; border-color:navy; color: #0080FF; font-size: 10px; font-family: Tahoma, Verdana, Arial, Sans-Serif"
	 method="post">
	<h3>${mensagem1}</h3><br>
        <input type="hidden" name="cmd" value="login"></input>	
	<input type="hidden" name="paginasolicitada" value="admin/topo/contato/cliente.jsp"></input>	
<table
		style="color: #004080; font-size: 14px; font-family: Tahoma, Verdana, Arial, Sans-Serif;"
		border="1" bordercolor="gray" cellpadding="5">
		<tr>
			<td>Login:</td>
			<td><input id="login" name="login" style="height: 20px" value="${usuario.login}"></input></td>
		</tr>
		<tr>
			<td>Senha:</td>
			<td><input type="password"  id="senha" name="senha" style="height: 20px" value="${usuario.senha}"></input></td>
		</tr>
		<tr>
			<td colspan="2" align="center"><input type="submit" value="Entrar" style="height: 23px"></input></td>
		</tr>		
	</table>
	<br>
	</form>
        <table>
            <tr> <td> ${mensagem2} </td> </tr>
            <tr> <td> ${mensagem3} </td> </tr>
            <tr> <td> ${mensagem4} </td> </tr>
            <tr> <td> ${mensagem5} </td> </tr>
        </table> 
     
    </div>
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
