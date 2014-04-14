<!doctype html>
<html lang="es">
<head>
	<%@include file="/include/includesComunes.jsp"%>
	<!-- Metas -->
	<title><s:property value="title"/></title>
	<meta name="description" content="<s:property value="description"/>">
	<meta name="keywords" content="<s:property value="keywords"/>">
	<meta  name="author" content="Urbaniza Interactiva">
	
	<link rel="stylesheet" type="text/css" href="/styles/actualidadIker.css" />
	
	<!-- JQCLOUD-->
    <link rel="stylesheet" type="text/css" href="/include/jquery/jqcloud/jqcloud.css" />
    <script type="text/javascript" src="/include/jquery/jqcloud/jqcloud-1.0.4.js"></script>
    
    <script type="text/javascript">
        var word_list = [
        {text: "armarios", weight: 2, link: "#"},
        {text: "arquitectura", weight: 3, link: "#"},
        {text: "bricolaje", weight: 4, link: "#"},
        {text: "casa", weight: 8, link: "#"},
        {text: "colores ", weight: 5, link: "#"},
        {text: "decora ", weight: 7, link: "#"},
        {text: "decoración", weight: 10, link: "#"},
        {text: "diseño", weight: 3, link: "#"},
        {text: "hogar", weight: 4, link: "#"},
        {text: "iluminación", weight: 6, link: "#"},
        {text: "interiores  ", weight: 9, link: "#"},
        {text: "interiorismo ", weight: 6, link: "#"},
        {text: "manualidades", weight: 8, link: "#"},
        {text: "mesa ", weight: 9, link: "#"},
        {text: "muebles ", weight: 8, link: "#"},
        {text: "primavera", weight: 4, link: "#"},
        {text: "reforma ", weight: 7, link: "#"},
        {text: "restauración  ", weight: 10, link: "#"}   
        ];
      $(function() {
        $("#nube").jQCloud(word_list);
      });

      function mostrar_archivos(){
  		document.getElementById('archivos').className='tipodesp desp';
  		document.getElementById('tags').className='tipodesp';
      	document.getElementById('categorias').className='tipodesp';
  	  }
      function mostrar_tags(){
  		document.getElementById('archivos').className='tipodesp';
  		document.getElementById('tags').className='tipodesp desp';
      	document.getElementById('categorias').className='tipodesp';
  	  }
  	  function mostrar_categorias(){
      	document.getElementById('archivos').className='tipodesp';
      	document.getElementById('tags').className='tipodesp';
       	document.getElementById('categorias').className='tipodesp desp';
  	  }
  	  function cargar_categoria(valor){
  		document.getElementById('cCategoriaFilt').value=valor;
  		document.getElementById('formCategorias').submit();
  	  }
    </script>

</head>
<body>
	<s:if test="%{noticia.cSeccion==1}">
		<div id="noticia_entrada" class="content entrada">
	</s:if>
	<s:else>
		<div id="blog_entrada" class="content entrada">
	</s:else>
        
        <%@include file="/include/cabecera.jsp"%>
    	
    	<div class="contenedor">
    	    <div id="migas">
                <ul>
                	<s:url id="urlInicio" namespace="/pages" action="index" >
		            </s:url>
                    <li class="bread1"><s:a href="%{urlInicio}">Inicio</s:a></li>
                    <li class="bread2 sub"><a href="#" onclick="showosubmigas('submigas1')">Actualidad</a>
                        <div class="submigas" id="submigas1">
                            <select id="tutipoges" name="tutipoges">
                                <option value="1">Lorem</option><option value="2">Ipsum</option><option value="3">dolore</option>
                            </select>
                        </div>
                    </li>
                    <li class="bread3 sub"><a href="#" onclick="showosubmigas('submigas1')">Noticias</a>
                        <div class="submigas" id="submigas2">
                            <select id="tutipoges" name="tutipoges">
                                <option value="1">Lorem</option><option value="2">Ipsum</option><option value="3">dolore</option>
                            </select>
                        </div>
                    </li>
                    <li class="bread4 sub"><a href="#" onclick="showosubmigas('submigas1')">el precio de la vivienda se modera</a>
                        <div class="submigas" id="submigas3">
                            <select id="tutipoges" name="tutipoges">
                                <option value="1">Lorem</option><option value="2">Ipsum</option><option value="3">dolore</option>
                            </select>
                        </div>
                    </li>
                </ul>
            </div><!--migas-->
            <div class="paginacion">
	            <s:url id="volverActualidad" namespace="/pages" action="actualidadNoticias" >
	            	<s:param name="cSeccionFilt"><s:property value="noticia.cSeccion"/></s:param>
	            	<s:param name="cTagFilt"><s:property value="cTagFilt"/></s:param>
	            	<s:param name="cCategoriaFilt"><s:property value="cCategoriaFilt"/></s:param>
	            	<s:param name="nPag"><s:property value="nPag"/></s:param>
	            </s:url>
                	
                <p><s:a href="%{volverActualidad}"><s:text name="noticias.volveractualidad"/></s:a></p>
                <ul>
                	<li><a href="#"><s:text name="noticias.anteriorpost"/></a></li>
                	<li><a href="#">...</a></li>
                	<li class="select"><a href="#">4</a></li>
                	<li><a href="#">5</a></li>
                	<li><a href="#">6</a></li>
                	<li><a href="#">...</a></li>
                	<li><a href="#"><s:text name="noticias.siguientepost"/></a></li>
                </ul>
            </div>
            <s:if test="%{noticia.cSeccion==1}">
				<h5><s:text name="noticias.noticias"/></h5>
			</s:if>
			<s:else>
				<h5><s:text name="noticias.blog"/></h5>
			</s:else>
            <article>
                <header>
                    <h6><s:property value="noticia.titular"/></h6>
                    <div class="social">
                        <ul>
                        	<li class="share"><a href="#"></a></li>
                        	<li class="mail"><a href="#"></a></li>
                        	<li class="print"><a href="#" onclick="print();return false;"></a></li>
                        </ul>
                    </div>
                </header>
                <p class="escrito"><s:text name="noticias.escritopor"/>: <span>Altamira <s:date name="fechaNoticia" format="%{formatoFecha}"/></span></p>
                
                <img data-thumb="<s:property value="noticia.foto"/>" alt="<s:text name="noticias.altfoto"/>" src="<s:property value="noticia.foto"/>">
                
                <s:property value="noticia.entradilla" escapeHtml="false"/>
                <s:property value="noticia.noticia" escapeHtml="false"/>
                                
                <footer>
                    <div id="likeit">
                        <div class="btn_share">
                            <div id="fb-root"></div>
                            <script>(function(d, s, id) {
                              var js, fjs = d.getElementsByTagName(s)[0];
                              if (d.getElementById(id)) return;
                              js = d.createElement(s); js.id = id;
                              js.src = "//connect.facebook.net/es_ES/all.js#xfbml=1&appId=429143090523894";
                              fjs.parentNode.insertBefore(js, fjs);
                            }(document, 'script', 'facebook-jssdk'));</script>
                            <div class="fb-like" data-href="https://developers.facebook.com/docs/plugins/" data-layout="button_count" data-action="like" data-show-faces="false" data-share="false"></div>
                        </div>                    
                        <div class="btn_share">
                            <a href="https://twitter.com/share" class="twitter-share-button" data-lang="es">Tweet</a>
                            <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document, 'script', 'twitter-wjs');</script>
                        </div>      
                    </div>
                </footer>                
            </article>
            <aside>
                <input type="text" name="" id="seach" value="<s:text name="global.buscar"/>" />
                <a href="#" id="search_button"></a>
                <div class="tipodesp" id="archivos">
                    <div class="cabecera">
                        <p><a href="#" onclick="mostrar_archivos();return false;"><s:text name="noticias.archivos"/></a></p>
                    </div>
                    <div class="contenido">
                    	<form name="formFechas" id="formFechas" action="">
                    		<input type="hidden" name="cSeccionFilt" value="<s:property value="noticia.cSeccion"/>">
                    		<input type="hidden" name="fecnotFilt" id="fecnotFilt" value="">

                    		<p><a href="#">Abril 2014</a></p>
                    		<p><a href="#">Marzo 2014</a></p>
                    		<p><a href="#">Febrero 2014</a></p>
	                        <p><a href="#">Enero 2014</a></p>
	                        <p><a href="#">Diciembre 2013</a></p>
	                        <p><a href="#">Noviembre 2013</a></p>
	                    </form>
                    </div>
                </div>
                
                 <div class="tipodesp" id="tags">
                    <div class="cabecera">
                        <p><a href="#" onclick="mostrar_tags();return false;"><s:text name="noticias.tags"/></a></p>
                    </div>
                    <div class="contenido">
                    	<form name="formTags" id="formTags" action="">
                    		<input type="hidden" name="cSeccionFilt" value="<s:property value="noticia.cSeccion"/>">
                    		<input type="hidden" name="cTagFilt" id="cTagFilt" value="">

		                    <div id="nube">
		                    </div>
		                </form>
                    </div>
                </div>
                
                <s:if test="%{cCategoriaFilt==-1}">
			 		<div class="tipodesp" id="categorias">
			 	</s:if>
			 	<s:else>
			 		<div class="tipodesp desp" id="categorias">
			 	</s:else>
                <div class="tipodesp" id="categorias">
                    <div class="cabecera">
                        <p><a href="#" onclick="mostrar_categorias();return false;"><s:text name="noticias.categorias"/></a></p>
                    </div>
                    <div class="contenido">
                    	<form name="formCategorias" id="formCategorias" action="actualidadNoticias">
                    		<input type="hidden" name="cSeccionFilt" value="<s:property value="noticia.cSeccion"/>">
                    		<input type="hidden" name="cCategoriaFilt" id="cCategoriaFilt" value="">

							 <s:iterator value="listaCategorias" var="categoria">
							 	<s:if test="%{cCategoria==cCategoriaFilt}">
							 		<p class="current">
							 	</s:if>
							 	<s:else>
							 		<p>
							 	</s:else>
	                        		<a href="#" onclick="cargar_categoria('<s:property value="cCategoria"/>');return false;"><s:property value="descripcion"/></a>
	                        	</p>
	                         </s:iterator>
	                    </form>
                    </div>
                </div>
                
            </aside>   
                  
            <div class="paginacion">
                <p><s:a href="%{volverActualidad}"><s:text name="noticias.volveractualidad"/></s:a></p>
                <ul>
                	<li><a href="#"><s:text name="noticias.anteriorpost"/></a></li>
                	<li><a href="#">...</a></li>
                	<li class="select"><a href="#">4</a></li>
                	<li><a href="#">5</a></li>
                	<li><a href="#">6</a></li>
                	<li><a href="#">...</a></li>
                	<li><a href="#"><s:text name="noticias.siguientepost"/></a></li>
                </ul>
            </div>
        </div>
        <%@include file="/include/foot.jsp"%>
   </div>	
</body>
</html>