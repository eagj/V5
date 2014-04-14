<!doctype html>
<html lang="es">
<head>
	<%@include file="/include/includesComunes.jsp"%>
	<!-- Metas -->
	<title><s:property value="title"/></title>
	<meta name="description" content="<s:property value="description"/>">
	<meta name="keywords" content="<s:property value="keywords"/>">
	<meta  name="author" content="Urbaniza Interactiva">

</head>
<body>
	<div id="actualidad" class="content">
       
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
            <div class="noticias bloque">               
                <h5><s:text name="noticias.noticias"/></h5>   
                 
                <s:iterator value="listaNoticias" var="noticia">
                	<s:url id="masInfo" namespace="/pages" action="actualidadNoticiasDetalle" >
                		<s:param name="cNoticia"><s:property value="cNoticia"/></s:param>
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
            <div class="blog bloque">
                <h5><s:text name="noticias.blog"/></h5>
                
                <s:iterator value="listaBlogs" var="blog">
                	<s:url id="masInfo" namespace="/pages" action="actualidadNoticiasDetalle" >
                		<s:param name="cNoticia"><s:property value="cNoticia"/></s:param>
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
        </div>
        <%@include file="/include/foot.jsp"%>
   </div>	
</body>
</html>