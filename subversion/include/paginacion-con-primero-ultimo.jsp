<!-- Paginacion -->
<!-- anterior -->
<ul>
<s:if test="%{anterior!=\"\"}">
    <!-- primera -->
	<s:url id="urlpaginainicial" namespace="/pages" action="%{actionName}">
		<s:param name="indexPagina"><s:property value="1" /></s:param>
		<s:param name="ran"><s:property value="fechahora" /></s:param>
		<s:param name="extraParams"><s:property value="extraParams"/></s:param>
		<s:param name="numResultados"><s:property value="numResultados"/></s:param>
	</s:url>
	<li class="last"><s:a href="%{urlpaginainicial}"><s:property value="textPrimero"/></s:a></li>
	<!-- anterior -->
	<s:url id="urlpaginaant" namespace="/pages" action="%{actionName}">
		<s:param name="indexPagina"><s:property value="anterior" /></s:param>
		<s:param name="ran"><s:property value="fechahora" /></s:param>
		<s:param name="extraParams"><s:property value="extraParams"/></s:param>
		<s:param name="numResultados"><s:property value="numResultados"/></s:param>
	</s:url>
	<li class="last"><s:a href="%{urlpaginaant}"><s:property value="textAnterior"/></s:a></li>
</s:if>
<!-- Paginas numericas -->
<s:iterator value="paginasPaginador" var="pagina">
	<s:set name="paginaResAct" value="indexPagina" />
	<s:if test="%{#paginaResAct==#pagina}">
		<li class="select">
	</s:if>
	<s:else>
		<li>
	</s:else>
	<s:url id="urlpagina"  namespace="/pages" action="%{actionName}">
		<s:param name="indexPagina"><s:property value="pagina" /></s:param>
		<s:param name="ran"><s:property value="fechahora" /></s:param>
		<s:param name="extraParams"><s:property value="extraParams"/></s:param>
		<s:param name="numResultados"><s:property value="numResultados"/></s:param>
	</s:url>
	<s:a href="%{urlpagina}">
		<s:property value="pagina" />
	</s:a>
	</li>
</s:iterator>
<!-- siguientes -->
<s:if test="%{siguiente!=\"\"}">
	<!-- siguiente -->
	<s:url id="urlpaginasig"  namespace="/pages" action="%{actionName}">
		<s:param name="indexPagina"><s:property value="siguiente" /></s:param>
		<s:param name="ran"><s:property value="fechahora" /></s:param>
		<s:param name="extraParams"><s:property value="extraParams"/></s:param>
		<s:param name="numResultados"><s:property value="numResultados"/></s:param>
	</s:url>
	<li class="last"><s:a href="%{urlpaginasig}"><s:property value="textSiguiente"/></s:a></li>
	<!--  ultima -->
	<s:url id="urlpaginafinal"  namespace="/pages" action="%{actionName}">
		<s:param name="indexPagina"><s:property value="paginaResTotales" /></s:param>
		<s:param name="ran"><s:property value="fechahora" /></s:param>
		<s:param name="extraParams" value="%{extraParams}"></s:param>
		<s:param name="numResultados"><s:property value="numResultados"/></s:param>
	</s:url>
	<li class="last"><s:a href="%{urlpaginafinal}"><s:property value="textUltimo"/></s:a></li>
</s:if>
</ul>
<!-- Fin Paginacion -->