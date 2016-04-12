
var fondo;
var trans;
function listerners(){
		$("#ventanaImagenes img").click(
		  function(self){
		    id=self.target.id;
		    var fid=id.split("_")
		    if (fid[0]=="back")
		    	for(var x=0;x<fondos.length;x++){
		    		if (fondos[x].id==fid[1]){
		    			fondo = fondos[x];
		    			$("#representacion").css("background-image", "url("+fondo.original+")"); 
		    		}
		    	}
		    if (fid[0]=="img")
		    	for(var x=0;x<fotos.length;x++){
		    		if (fotos[x].id==fid[1]){
		    			$("#representacion").append(
							'<img name="'+fotos[x].id+'" src="'+fotos[x].item+'">');
		    			$( "#representacion img" ).draggable();
		    		}
		    	} 
		  }
		);
	}
	
$(document).ready(function(){
$( "#target" ).keyup(function() {
 	$("#busqueda").submit();
});

$("div").click(function(){

		var elementos=$( "#representacion img" );
		var img = new Array();
		for (x=0;x<elementos.length;x++){

			img.push({id:elementos[x].name,
				top:$(elementos[x]).css("top")==='auto'?0:$(elementos[x]).css("top"),
				left:$(elementos[x]).css("left")==='auto'?0:$(elementos[x]).css("left"),
			});
		}
		trans = {
			"fondo":fondo,
			"imagenes":img
		}
		console.log(JSON.stringify(trans));
	});
});