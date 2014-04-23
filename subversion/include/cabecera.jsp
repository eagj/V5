<div id="user">
	<p>
		estas navegando como <span>empleado</span>
	</p>
</div>
<header>
	<div id="idioma">
		<ul>
			<s:bean name="com.altamira.dominio.vista.IdiomaPortal" var="idiomas"></s:bean>
			<s:iterator value="#idiomas.items">
				<s:url id='urlidioma' namespace="/pages" action="%{actionName}">
					<s:param name="request_locale">
						<s:property value="info" />
					</s:param>
					<s:param name="lang_changed">1</s:param>
				</s:url>
				<s:if test="#request.locale.language==info">
					<li class="select">
				</s:if>
				<s:else>
					<li>
				</s:else>
				<s:a href="%{urlidioma}">
					<s:property value="text" />
				</s:a>
			</s:iterator>
		</ul>
	</div>
	<div id="contenidohead">
		<div id="logoaltamira">
			<a href="/"><img alt="Altamira santander"
				src="<s:url value='/images/logo_altamira.png'/>"
				alt="<s:text name="cabecera.logo.inmuebles.altamira"/>"></a>
		</div>
		<div id="zonacentro">
			<a href="#">
				<div id="tfnohead">
					<p>
						<img src="<s:url value='/images/tfno_head.png'/>">902 509 559
					</p>
					<p class="leyenda"><s:text name="cabecera.telefonovideollamada"/></p>
				</div>
			</a>
			<div id="socialhead">
				<s:bean name="com.altamira.dominio.vista.RedSocial" var="variable"></s:bean>
				<ul>
					<s:iterator value="#variable.items">
					<li id="<s:property value="image"/>"><a href="<s:property value="url"/>">&nbsp;</a></li>
					</s:iterator>
				</ul>
			</div>
		</div>
		<div id="rightbox">
		</div>
	</div>
</header>

<%@include file="/include/menu.jsp"%>

<%@include file="/include/busquedaAvanzada.jsp"%>