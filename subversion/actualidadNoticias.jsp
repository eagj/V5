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
</head>
<body>
    <div id="actualidad" class="content entrada listadoActualidad">
       
        <%@include file="/include/cabecera.jsp"%>

    	<div class="contenedor">
    	    <div id="migas">
                <ul>
                    <li class="bread1"><a href="#">Inicio</a></li>
                    <li class="bread2 sub"><a href="#" onclick="showosubmigas('submigas1')">Actualidad</a>
                        <div class="submigas" id="submigas1">
                            <select id="tutipoges" name="tutipoges">
                                <option value="1">Lorem</option><option value="2">Ipsum</option><option value="3">dolore</option>
                            </select>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="paginacion">
	            <s:url id="volverActualidad" namespace="/pages" action="actualidad" >
	            </s:url>
                
                <p><s:a href="%{volverActualidad}">Volver a actualidad</s:a></p>
                
                <%@include file="/include/pagination.jsp"%>
                <ul>
                	<s:if test="%{totalNoticias>limit}">
	                	<s:if test="%{nPag>0}">
	                		<s:url id="urlAnterior" namespace="/pages" action="actualidadNoticias" >
	                			<s:param name="cSeccionFilt"><s:property value="noticia.cSeccion"/></s:param>
	                			<s:param name="cTagFilt"><s:property value="cTagFilt"/></s:param>
	                			<s:param name="cCategoriaFilt"><s:property value="cCategoriaFilt"/></s:param>
	                			<s:param name="nPag"><s:property value="nPag-1"/></s:param>
		            		</s:url>
	                		<li><s:a href="%{urlAnterior}">&laquo; Anterior página</s:a></li>
	                	</s:if>
	                	
	                	
 	                	<li><a href="#">...</a></li>
	                	<li class="select"><a href="#">4</a></li>
	                	<li><a href="#">5</a></li>
	                	<li><a href="#">6</a></li>
	                	<li><a href="#">...</a></li> 
	                	<s:if test="%{totalNoticias>((limit*nPag) + limit)}">
	                		<s:url id="urlSiguiente" namespace="/pages" action="actualidadNoticias" >
	                			<s:param name="cSeccionFilt"><s:property value="noticia.cSeccion"/></s:param>
	                			<s:param name="cTagFilt"><s:property value="cTagFilt"/></s:param>
	                			<s:param name="cCategoriaFilt"><s:property value="cCategoriaFilt"/></s:param>
	                			<s:param name="nPag"><s:property value="nPag+1"/></s:param>
		            		</s:url>
	                		<li><s:a href="%{urlSiguiente}">Siguiente página &raquo;</s:a></li>
	                	</s:if>
	                </s:if>
                </ul>
            </div>
            
            <s:if test="%{cSeccionFilt==1}">
            	<div class="noticias bloque inicio">
					<h5><s:text name="noticias.noticias"/></h5>
				</div>
			</s:if>
			<s:else>
				<div class="blog bloque inicio">
					<h5><s:text name="noticias.blog"/></h5>
				</div>
			</s:else> 
			
			<s:if test="%{cSeccionFilt==1}">
            	<div class="noticias bloque">
			</s:if>
			<s:else>
				<div class="blog bloque">
			</s:else> 
                
                <s:iterator value="listaNoticias_bloque1" var="noticia1">
                	<s:url id="masInfo" namespace="/pages" action="actualidadNoticiasDetalle" >
                		<s:param name="cNoticia"><s:property value="cNoticia"/></s:param>
	                	<s:param name="cSeccionFilt"><s:property value="noticia.cSeccion"/></s:param>
	                	<s:param name="cTagFilt"><s:property value="cTagFilt"/></s:param>
               			<s:param name="cCategoriaFilt"><s:property value="cCategoriaFilt"/></s:param>
               			<s:param name="nPag"><s:property value="nPag-1"/></s:param>
                	</s:url>
                	<div class="entrada">
                		<s:a href="%{masInfo}">
	                        <div class="head">
	                            <h6><s:property value="titular"/></h6>
	                            <p class="fecha"><s:property value="fecnot"/></p>
	                        </div>
	                        <div class="imagen">
	                              <img src="<s:property value="foto"/>" alt="<s:text name="noticias.altfoto"/>" data-thumb="<s:property value="foto"/>" />
	                        </div>
	                        <h7><s:property value="entradilla"/></h7>
	                    </s:a>
	                    <p class="masinfo"><s:a href="%{masInfo}"><s:text name="global.masinfo"/></s:a></p>
	                </div>
	            </s:iterator>          
            </div>
            <s:if test="%{cSeccionFilt==1}">
            	<div class="noticias bloque">
			</s:if>
			<s:else>
				<div class="blog bloque">
			</s:else>   
                <s:iterator value="listaNoticias_bloque2" var="noticia2">
                	<s:url id="masInfo" namespace="/pages" action="actualidadNoticiasDetalle" >
                		<s:param name="cNoticia"><s:property value="cNoticia"/></s:param>
	                	<s:param name="cSeccionFilt"><s:property value="noticia.cSeccion"/></s:param>
	                	<s:param name="cTagFilt"><s:property value="cTagFilt"/></s:param>
               			<s:param name="cCategoriaFilt"><s:property value="cCategoriaFilt"/></s:param>
               			<s:param name="nPag"><s:property value="nPag-1"/></s:param>
                	</s:url>
                	<div class="entrada">
                		<s:a href="%{masInfo}">
	                        <div class="head">
	                            <h6><s:property value="titular"/></h6>
	                            <p class="fecha"><s:property value="fecnot"/></p>
	                        </div>
	                        <div class="imagen">
	                              <img src="<s:property value="foto"/>" alt="" data-thumb="<s:property value="foto"/>" />
	                        </div>
	                        <h7><s:property value="entradilla"/></h7>
	                    </s:a>
	                    <p class="masinfo"><s:a href="%{masInfo}">+ info ></s:a></p>
	                </div>
	            </s:iterator>          
            </div>
            <div class="paginacion">
                <p><s:a href="%{volverActualidad}">Volver a actualidad</s:a></p>
                <ul>
                	<s:if test="%{totalNoticias>limit}">
	                	<s:if test="%{nPag>0}">
	                		<s:url id="urlAnterior" namespace="/pages" action="actualidadNoticias" >
	                			<s:param name="cSeccionFilt"><s:property value="noticia.cSeccion"/></s:param>
	                			<s:param name="cTagFilt"><s:property value="cTagFilt"/></s:param>
	                			<s:param name="cCategoriaFilt"><s:property value="cCategoriaFilt"/></s:param>
	                			<s:param name="nPag"><s:property value="nPag-1"/></s:param>
		            		</s:url>
	                		<li><s:a href="%{urlAnterior}">&laquo; Anterior página</s:a></li>
	                	</s:if>
	                	
	                	
 	                	<li><a href="#">...</a></li>
	                	<li class="select"><a href="#">4</a></li>
	                	<li><a href="#">5</a></li>
	                	<li><a href="#">6</a></li>
	                	<li><a href="#">...</a></li> 
	                	<s:if test="%{totalNoticias>((limit*nPag) + limit)}">
	                		<s:url id="urlSiguiente" namespace="/pages" action="actualidadNoticias" >
	                			<s:param name="cSeccionFilt"><s:property value="noticia.cSeccion"/></s:param>
	                			<s:param name="cTagFilt"><s:property value="cTagFilt"/></s:param>
	                			<s:param name="cCategoriaFilt"><s:property value="cCategoriaFilt"/></s:param>
	                			<s:param name="nPag"><s:property value="nPag+1"/></s:param>
		            		</s:url>
	                		<li><s:a href="%{urlSiguiente}">Siguiente página &raquo;</s:a></li>
	                	</s:if>
	                </s:if>
                </ul>
            </div>
        </div>
        <%@include file="/include/foot.jsp"%>
   </div>	
</body>
</html>