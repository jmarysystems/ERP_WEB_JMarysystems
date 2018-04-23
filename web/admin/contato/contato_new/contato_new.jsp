<div align="center">
    <form id="form_new_cliente" action="Home" class="listsn pf0 dispin" method="post" >
        <input type="hidden" name="cmd" value="cadastrar_cliente_salvar"></input> 
        <input type="hidden" name="paginasolicitada" value="../../contato/contato_new/contato_new.jsp"></input> 
        <!-- -->
        
        <!-- -->
        <div class="ml15 mt10 mb10 pf0 mf0 mr15">
               <table width="100%">    
                   <tr>  
                       <td class="pf0 ml15">      
                           <div class="backtitulo boxtitulosombra mousepointer w146px h20px">
                                <div class=" pt1 pl10 ftm14px festilobold "> 
                                    Cadastrar Cliente    
                                </div> 
                            </div>
                           
                        </td> 
                        <td class="" style=" float:right; margin-right:10px; ">             
                            <div class="boxbotaosombra mousepointer"> 
                                <table width="100%" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td> 
                                            <input onclick="envia_form_generico('#form_new_cliente');" class="mousepointer h30px" type="image" src="../../../utilidades/utilidades_imagens/salvar.gif" title="Salvar">                                                      </td>  
                                        <td> 
                                            
                                        </td> 
                                    </tr>
                                </table>  
                            </div>    
                        </td>             
                    </tr>                                           
                 </table>
            </div>
            <!-- -->	      
            <h3>${mensagem1}</h3>
    
    <!-- #### TABELA DE CADASTRO INÍCIO #### ------------------------------------------ --> 
    <!-- 
    -->
    <table id="tabelanewcliente" border="0" cellpadding="0" cellspacing="0">    
    <!-- 
    -->        
    <!-- #### TABELA DE CADASTRO INÍCIO #### ------------------------------------------ --> 
        <!-- -->
        <thead>
            <tr id="tabelanewclientetr1" class="mostrar border-bottom_1px_preta">
                <td> 
                    <table>
                        <tr>
                
                <td id="tabelanewclientetr1td1" class="botmSelec2 mousepointer boxtitulosombra" style="vertical-align: central;"
                    onMouseOver="
                        $('#tabelanewclientetr1td1').toggleClass('backverd');
                        " 
                        onMouseOut="
                            $('#tabelanewclientetr1td1').toggleClass('backverd');
                        "
                        onclick="
                            $('#tabelanewcliente').find('td').each(function(indice){
                                $(this).removeClass('botmSelec2');
                            });
                            $('#tabelanewclientetr1td1').toggleClass('botmSelec2');
                            $('#tabelanewclienteopcoes').show();
                        "
                    >                    
                    
                    <img class="mousepointer" src="../../../utilidades/utilidades_imagens/editar_tabela.gif" width="23" height="23" title="" style="vertical-align: bottom;" >    
                    
                    Dados Básicos &nbsp;                                                   
                </td> 
                
                <td class="w10px"></td>
                
                <td id="tabelanewclientetr1td2" class="mousepointer boxtitulosombra" style="vertical-align: central;"
                    onMouseOver="
                        $('#tabelanewclientetr1td2').toggleClass('backverd');
                        " 
                        onMouseOut="
                            $('#tabelanewclientetr1td2').toggleClass('backverd');
                        "
                        onclick="
                            $('#tabelanewcliente').find('td').each(function(indice){
                                $(this).removeClass('botmSelec2');
                            });
                            $('#tabelanewclientetr1td2').toggleClass('botmSelec2');
                            $('#tabelanewclienteopcoes').hide();
                        "
                    >                    
                    
                    <img class="mousepointer" src="../../../utilidades/utilidades_imagens/editar_tabela.gif" width="23" height="23" title="" style="vertical-align: bottom;" >    
                    
                    Outros &nbsp;                                                   
                </td>
                
                </tr>
                    </table>
                </td>
            </tr>  
        </thead>
        <!-- -->
        
        <!-- -->
        <tbody>
            <tr>
                <td class="h16px">   
                   
                </td>
            </tr>
            
            <!-- -->
            <tr id="tabelanewclienteopcoes">
                <td>                     
                    <table>
                        <tr>
                            <td> 
                                <table>
                                    <tr>
                                        
                                        <td class="w300px boxField fcinza backbco">
                                            <input placeholder="NOME *" type="text" id="nome" name="nome" required class="w300px h30px backpMuda bordasem ftm14px" autocomplete="off" especialtype="string" value="${clientes.nome}" title="No mínimo 4 letras"
                                                onfocus=" 
                                                    $('#nome').on('mouseout', function (e) {
                                                        var nome = $('#nome').val();
                                                        if( nome.length > 3 ) {

                                                            return true;                                                            
                                                        } else {                                   
                                                            document.getElementById( 'nome' ).value = '';
                                                            return false;
                                                        }        
                                                    });  
                                                    $('#nome').on('focusout', function (e) {
                                                        var nome = $('#nome').val();
                                                        if( nome.length > 3 ) {

                                                            return true;                                                            
                                                        } else {                                   
                                                            document.getElementById( 'nome' ).value = '';
                                                            return false;
                                                        }        
                                                    });
                                                "
                                            >
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        
                        <tr>
                            <td> 
                                <table>
                                    <tr>
                                        
                                        <td class="w260px boxField fcinza backbco">
                                            <input placeholder="ENDEREÇO *" type="text" id="endereco" name="endereco" required class="w260px h30px backpMuda bordasem ftm14px" autocomplete="off" especialtype="string" value="${clientes.endereco}" title="No mínimo 4 letras"
                                                onfocus=" 
                                                    $('#endereco').on('mouseout', function (e) {
                                                        var nome = $('#endereco').val();
                                                        if( nome.length > 3 ) {

                                                            return true;                                                            
                                                        } else {                                   
                                                            document.getElementById( 'endereco' ).value = '';
                                                            return false;
                                                        }        
                                                    });  
                                                    $('#endereco').on('focusout', function (e) {
                                                        var nome = $('#endereco').val();
                                                        if( nome.length > 3 ) {

                                                            return true;                                                            
                                                        } else {                                   
                                                            document.getElementById( 'endereco' ).value = '';
                                                            return false;
                                                        }        
                                                    });
                                                "
                                            >
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>  
                        
                        <tr>
                            <td> 
                                <table>
                                    <tr>                                        
                                        <td class="w100px boxField fcinza backbco">
                                            <input placeholder="NÚMERO *" type="text" id="numero" name="numero" required pattern="[0-9]+$" class="w100px h30px backpMuda bordasem ftm14px" autocomplete="off" especialtype="string" value="${clientes.numero}" title="No mínimo 1 caractere"
                                                onfocus=" 
                                                    $('#numero').on('mouseout', function (e) {
                                                        var nome = $('#numero').val();
                                                        if( nome.length >= 1 ) {

                                                            return true;                                                            
                                                        } else {                                   
                                                            document.getElementById( 'numero' ).value = '';
                                                            return false;
                                                        }        
                                                    });  
                                                    $('#numero').on('focusout', function (e) {
                                                        var nome = $('#numero').val();
                                                        if( nome.length >= 1 ) {

                                                            return true;                                                            
                                                        } else {                                   
                                                            document.getElementById( 'numero' ).value = '';
                                                            return false;
                                                        }        
                                                    });
                                                "
                                            >
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr> 
                        
                        <tr>
                            <td> 
                                <table>
                                    <tr>
                                       
                                        <td class="w190px boxField fcinza backbco">
                                            <input placeholder="EMAIL " type="email" id="email" name="email" class="w190px h30px backpMuda bordasem ftm14px" autocomplete="off" especialtype="string" value="${clientes.email}" title="Informe um e-mail válido!"
                                                onMouseOver=" 
                                                    $('#email').on('mouseout', function (e) {
                                                        var email = $('#email').val();
                                                        if(email !=='') {
                                                            var filtro = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
                                                            if(filtro.test(email)){
                                                            
                                                                return true;
                                                            } else {
                                                                document.getElementById( 'email' ).value = '';
                                                                return false;
                                                           }
                                                        }        
                                                    });  
                                                    $('#email').on('focusout', function (e) {
                                                        var email = $('#email').val();
                                                        if(email !=='') {
                                                            var filtro = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
                                                            if(filtro.test(email)){
                                                            
                                                                return true;
                                                            } else {
                                                                document.getElementById( 'email' ).value = '';
                                                                return false;
                                                           }
                                                        }        
                                                    });
                                                "
                                            >
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        
                        <tr>
                            <td> 
                                <table>
                                    <tr>
                                       
                                        <td class="w300px boxField fcinza backbco">
                                            <input placeholder="PONTO DE REF. *" type="text" id="pontodereferencia" name="pontodereferencia" required class="w300px h30px backpMuda bordasem ftm14px" autocomplete="off" especialtype="string" value="${clientes.pontodereferencia}" title="No mínimo 4 letras"
                                                onfocus=" 
                                                    $('#pontodereferencia').on('mouseout', function (e) {
                                                        var nome = $('#pontodereferencia').val();
                                                        if( nome.length > 3 ) {

                                                            return true;                                                            
                                                        } else {                                   
                                                            document.getElementById( 'pontodereferencia' ).value = '';
                                                            return false;
                                                        }        
                                                    });  
                                                    $('#pontodereferencia').on('focusout', function (e) {
                                                        var nome = $('#pontodereferencia').val();
                                                        if( nome.length > 3 ) {

                                                            return true;                                                            
                                                        } else {                                   
                                                            document.getElementById( 'pontodereferencia' ).value = '';
                                                            return false;
                                                        }        
                                                    });
                                                "
                                            >
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        
                        <tr>
                            <td> 
                                <table>
                                    <tr>
                                        
                                        <td class="w146px boxField fcinza backbco">
                                            <input placeholder="TELEFONE *" type="text" id="telefone" name="telefone" required  class="w146px h30px backpMuda bordasem ftm14px" autocomplete="off" especialtype="string" value="${clientes.telefone}"
                                                onMouseOver="
                                                    $('#telefone').mask('(00) 0000-00009', {clearIfNotMatch: true}, {'translation': {0: {pattern: /[0-9*]/}}});
                                                "
                                            >
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        
                        <tr>
                            <td> 
                                <table>
                                    <tr>
                                       
                                        <td class="w300px boxField fcinza backbco">
                                            <input placeholder="OBS " type="text" id="observacao" name="observacao" class="w300px h30px backpMuda bordasem ftm14px" autocomplete="off" especialtype="string" value="${clientes.observacao}">
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>  
            <!-- -->
            
        <!-- -->
            <tr>
                <td class="h16px mostrar border-bottom_1px_preta">   
                   
                </td>
            </tr>
        </tbody>
            
    <!-- #### TABELA DE CADASTRO FIM #### ------------------------------------------ --> 
    <!-- 
    -->
    </table>   
    <!-- 
    -->        
    <!-- #### TABELA DE CADASTRO FIM #### ------------------------------------------ -->       
    
    </form>
</div>  

                                        
                                        
                                        
    
