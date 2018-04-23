$(document).ready(function(){
    
//Tabela Home INÍCIO    
    //
    $("#cliente_tabela_home").css( "width", "100%" ); 
    //
    
    //
    $('#cliente_tabela_home tr').click(function(e){
        
        if ( $(e.currentTarget).hasClass("backverd") === false ){
            cliente_remover_outro_tr_selec("backverd");               
            $(e.currentTarget).toggleClass('backverd');
        } else { cliente_remover_outro_tr_selec("backverd"); }
    });
    //
    
    //
    $('#cliente_tabela_home tr').mouseenter(function(e){
        
        if ( $(e.currentTarget).hasClass("backama") === false ){

            cliente_remover_outro_tr_selec('backama');               
            $(e.currentTarget).toggleClass('backama');
        } else { cliente_remover_outro_tr_selec('backama'); }
    });
    //
    
    //
    $('#cliente_tabela_home tr').mouseout(function(e){
        
        cliente_remover_outro_tr_selec('backama');      
    });
    //
    
    //
    function cliente_remover_outro_tr_selec(classe){
        
        var table = $('#cliente_tabela_home');
        table.find('tr').each(function(indice){
            $(this).removeClass(classe);
        });
    }
    //
//Tabela Home FIM
        
});
