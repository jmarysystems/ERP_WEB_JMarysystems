$(document).ready(function(){

//Tabela Home INÍCIO        
    $('#cliente_tabela_home tbody').on('click', 'tr', function (e) {
        
        if ( $(e.currentTarget).hasClass("backverd") === false ){
            cliente_remover_outro_tr_selec("backverd"); 
            cliente_remover_outro_tr_selec('backazulcla'); 
            $(e.currentTarget).toggleClass('backverd');
    
            var id_selecionado = $('td', this).eq(1).text();
        } else { cliente_remover_outro_tr_selec("backverd"); }
    });
    
        
    $('#cliente_tabela_home tbody').on('mouseenter', 'tr', function (e) {    

        if ( $(e.currentTarget).hasClass("backazulcla") === false ){

            cliente_remover_outro_tr_selec('backazulcla');               
            $(e.currentTarget).toggleClass('backazulcla');
        } else { cliente_remover_outro_tr_selec('backazulcla'); }
    });
       
    
    $('#cliente_tabela_home tbody').on('mouseout', 'tr', function (e) {    
        
        cliente_remover_outro_tr_selec('backazulcla');      
    });
    
        
    function cliente_remover_outro_tr_selec(classe){
        
        var table = $('#cliente_tabela_home');
        table.find('tr').each(function(indice){
            $(this).removeClass(classe);
        });
    }

//Tabela Home FIM
        
});