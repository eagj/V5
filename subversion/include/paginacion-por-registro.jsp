<!-- Paginacion -->
<!-- anterior -->
<ul>
<s:if test="%{anterior.pagina!=\"\"}">
	<!-- anterior -->
	<s:url id="urlpaginaant" namespace="/pages" action="%{actionName}">
		<s:param name="indexPagina"><s:property value="anterior.pagina" /></s:param>
		<s:param name="ran"><s:property value="fechahora" /></s:param>
		<s:param name="%{anterior.nombreParam}"><s:property value="anterior.valorParam"/></s:param>
		<s:param name="numResultados"><s:property value="numResultados"/></s:param>
	</s:url>
	<li class="last"><s:a href="%{urlpaginaant}"><s:property value="textAnterior"/></s:a></li>
    <!-- primera -->
	<li><s:property value="textPrimero"/></li>
</s:if>
<!-- Paginas numericas -->
<s:iterator value="paginasPaginador" var="pagina">
	<s:set name="paginaResAct" value="indexPagina" />
	<s:if test="%{#paginaResAct==#pagina.pagina}">
		<li class="select">
	</s:if>
	<s:else>
		<li>
	</s:else>
	<s:url id="urlpagina"  namespace="/pages" action="%{actionName}">
		<s:param name="indexPagina"><s:property value="#pagina.pagina" /></s:param>
		<s:param name="ran"><s:property value="fechahora" /></s:param>
		<s:param name="%{#pagina.nombreParam}"><s:property value="#pagina.valorParam"/></s:param>
		<s:param name="numResultados"><s:property value="numResultados"/></s:param>
	</s:url>
	<s:a href="%{urlpagina}">
		<s:property value="pagina" />
	</s:a>
	</li>
</s:iterator>
<!-- siguientes -->
<s:if test="%{siguiente.pagina!=\"\"}">
	<!--  ultima -->
	<li><s:property value="textUltimo"/></li>
	<!-- siguiente -->
	<s:url id="urlpaginasig"  namespace="/pages" action="%{actionName}">
		<s:param name="indexPagina"><s:property value="siguiente.pagina" /></s:param>
		<s:param name="ran"><s:property value="fechahora" /></s:param>
		<s:param name="%{siguiente.nombreParam}"><s:property value="siguiente.valorParam"/></s:param>
		<s:param name="numResultados"><s:property value="numResultados"/></s:param>
	</s:url>
	<li class="last"><s:a href="%{urlpaginasig}"><s:property value="textSiguiente"/></s:a></li>
</s:if>
</ul>
<!-- Fin Paginacion -->