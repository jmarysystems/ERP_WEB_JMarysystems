function envia_form_generico(id_form){   
    var form = $(id_form);
    form.submit(function () { 
            $.ajax({
            type: form.attr('method'),
            url: form.attr('action'),
            data: form.serialize(),
            beforeSend : function(){ document.getElementById( "central" ).innerHTML = '<h2 align="center">carregando...<br> <img width="150px" height="150px" src="../../../utilidades/utilidades_imagens/javafx_loading_100x100.gif"> </h2>'; },
            error: function(){ alert( "Erro na comunicacao com o servidor!" ); },
            success: function (data) { document.getElementById( "central" ).innerHTML = data; }
        });
        return false;    
    });
}

