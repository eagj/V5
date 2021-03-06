<!doctype html>
<html lang="es">
<head>
	<%@include file="/include/includesComunes.jsp"%>
	
	<script>
		var carrudestaActual = 1;
		// FUNCION PARA NIVOSLIDER
		$(window).load(function() {
			$('#slider').nivoSlider();
		});
	
		// FUNCIONES PARA BUBBLETIP
		$(window).bind('load', function() {
			$('#geop1').bubbletip($('#tip1_left'), {
				deltaDirection : 'right',
			});
			$('#geop2').bubbletip($('#tip2_left'), {
				deltaDirection : 'right',
			});
			$('#geop3').bubbletip($('#tip3_left'), {
				deltaDirection : 'right',
			});
			$('#geop4').bubbletip($('#tip4_left'), {
				deltaDirection : 'right',
			});
		});
		function destacadoAnt(){
			if(carrudestaActual > 1){
				document.getElementById("carru"+carrudestaActual).style.display="none";
				carrudestaActual = carrudestaActual-1;
				document.getElementById("carru"+carrudestaActual).style.display="block";
				if(carrudestaActual==1)document.getElementById("carrubloq_prev").className="carrubloq_bot";
				document.getElementById("carrubloq_next").className="carrubloq_bot active";
				
			}
		}
		function destacadoSig(){
			if(document.getElementById("carru"+(carrudestaActual+1))){
				document.getElementById("carru"+carrudestaActual).style.display="none";
				carrudestaActual = carrudestaActual+1;
				document.getElementById("carru"+carrudestaActual).style.display="block";
				if(!document.getElementById("carru"+(carrudestaActual+1)))document.getElementById("carrubloq_next").className="carrubloq_bot";
				document.getElementById("carrubloq_prev").className="carrubloq_bot active";
			}
		}
	</script>
</head>
<body>
	<div id="index" class="content">

		<%@include file="/include/cabecera.jsp"%>

		<div class="contenedor">
			<div id="carrusel">
				<div class="slider-wrapper theme-default">
					<div class="ribbon"></div>
					<div id="slider">
						<s:iterator value="listabanners" id="banner">
							<s:property value="banner" escapeHtml="false" />
						</s:iterator>
					</div>
				</div>
			</div>
			<!-- CARRUSEL -->
			<div id="carruminifich">
				<h3 class="linea">
					<span><s:text name="index.destacados" /></span>
				</h3>
				<div id="carrubloq_prev" class="carrubloq_bot">
					<a id="carrubloq_previmg" href="#" onclick="destacadoAnt();return false;"><</a>
				</div>
				<div id="carrubloq">
					<s:set name="carrudestaActual" value="1"/>
					<s:set name="carrudesta" value="1"/>
					<s:set name="numMinifichas" value="0"/>
					<div id="carru<s:property value="%{#carrudesta}" />">
						<s:iterator value="listaMinifichas" id="minificha" status="stat">
							<s:if test="%{ #minificha instanceof com.altamira.dominio.vista.MinifichaPromocion }">
								<s:if test="%{#numMinifichas > 2}">
									<s:set name="carrudesta" value="%{#carrudesta+1}"/>
									</div>
									<div id="carru<s:property value="%{#carrudesta}" />" style="display: none;">
									<s:set name="numMinifichas" value="0"/>
								</s:if>
								<s:set name="numMinifichas" value="%{#numMinifichas+2}"/> 
								<div class="bloqueminificha doble">
									<div class="bloqueminifichacontent">
										<a id="inmulink1"
											onclick="alert('Click inmueble');return false;" href="#">
											<div class="img_bloqueminificha">
												<img src="http://placehold.it/420x145" alt="XXX" />
											</div>
											<div class="datos_basic">
												<h4>Pozuelo de Alarc�n</h4>
												<p class="direccion">Cer�mica 5, 28233 - Madrid</p>
												<p class="descrip">
													Index: <s:property value="%{#numMinifichas}" /> <br />
      												Count: <s:property value="%{#stat.count}" /> <br /> 
      											</p>
											</div>
											<p class="tipo">Obra nueva</p>
											<ul class="detalles">
												<li>Chalet adosado</li>
												<li>150m<sup>2</sup></li>
												<li>2 hab.</li>
											</ul>
											<div class="precio">
												<p class="valorprecio">10 chalets desde 525.000&euro;</p>
												<p class="tipgest">Precio Compra</p>
											</div>
											<div class="precio2">
												<div class="col1">
													<p class="tipgest">Alquiler desde</p>
													<p class="valorprecio">850&euro;/mes</p>
												</div>
												<div class="col2">
													<p class="tipgest">A. opc. compra desde</p>
													<p class="valorprecio">850&euro;/mes</p>
												</div>
											</div>
										</a>
										<div id="geop2" class="geop"
											onclick="alert('Has hecho click en geopo')">
											<div id="tip2_left" style="display: none;">
												<p style="font-size: 12px; color: #3e3e3e">Ver en mapa</p>
											</div>
										</div>
										<div class="campanas">
											<div class="campana">
												<ul>
													<li><a href="#"><img alt="campa�a x"
															src="http://placehold.it/45x45"></a></li>
													<li><a href="#"><img alt="campa�a x"
															src="http://placehold.it/45x45"></a></li>
													<li><a href="#"><img alt="campa�a x"
															src="http://placehold.it/45x45"></a></li>
												</ul>
											</div>
										</div>
									</div>
									<div class="comparar">
										<input type="checkbox" /> <label>Comparar</label>
									</div>
									<div class="social">
										<a href="#" id="share1" class="share"></a> <a href="#"
											id="mail1" class="mail"></a> <a href="#" id="favorite1"
											class="favorite select"></a>
									</div>
								</div>
							</s:if>
							<s:elseif test="%{ #minificha instanceof com.altamira.dominio.vista.MinifichaInmueble }">
								<s:if test="%{#numMinifichas > 3}">
									<s:set name="carrudesta" value="%{#carrudesta+1}"/>
									</div>
									<div id="carru<s:property value="%{#carrudesta}" />" style="display: none;">
									<s:set name="numMinifichas" value="0"/>
								</s:if>
								<s:set name="numMinifichas" value="%{#numMinifichas+1}"/> 
								<div class="bloqueminificha">
									<div class="bloqueminifichacontent">
										<a id="inmulink1" onclick="alert('Click inmueble');return false;" href="#">
											<div class="img_bloqueminificha">
												<img src="http://placehold.it/193x145" alt="XXX" />
											</div>
											<div class="datos_basic">
												<h4>Madrid</h4>
												<p class="direccion">San Vicente Ferrer, 28233 - Madrid</p>
												<p class="descrip">Lorem ipsum dolor sit amet,
													consectetur adipisicing elit, sed do eiusmod tempor
													incididunt ut labore et dolore magna aliqua. Ut enim ad
													minim veniam, quis nostrud exercitation ullamco laboris nisi
													ut aliquip ex ea commodo consequat. Duis aute irure dolor in
													reprehenderit in voluptate velit esse cillum dolore eu
													fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
													proident, sunt in culpa qui officia deserunt mollit anim id
													est laborum.</p>
											</div>
											<p class="tipo">Obra nueva</p>
											<ul class="detalles">
												<li>Chalet adosado</li>
												<li>150m<sup>2</sup></li>
												<li>2 hab.</li>
											</ul>
											<div class="precio">
												<p class="valorprecio">360.000&euro;</p>
												<p class="tipgest">Precio Compra</p>
											</div>
											<div class="precio2">
												<div class="col1">
													<p class="tipgest">Alquiler</p>
													<p class="valorprecio">700&euro;/mes</p>
												</div>
												<div class="col2">
													<p class="tipgest">A. opc. compra</p>
													<p class="valorprecio">650&euro;/mes</p>
												</div>
											</div>
										</a>
										<div id="geop1" class="geop" onclick="alert('Has hecho click en geopo')">
											<div id="tip1_left" style="display: none;">
												<p style="font-size: 12px; color: #3e3e3e">Ver en mapa</p>
											</div>
										</div>
										<div class="campanas">
											<div class="campana">
												<ul>
													<li><a href="#"><img alt="campa�a x" src="http://placehold.it/45x45"></a></li>
												</ul>
											</div>
										</div>
									</div>
									<div class="comparar">
										<input type="checkbox" /><label>Comparar</label>
									</div>
									<div class="social">
										<a href="#" id="share1" class="share"></a> 
										<a href="#"	id="mail1" class="mail"></a> 
										<a href="#" id="favorite1" class="favorite"></a>
									</div>
								</div>
							</s:elseif>
						</s:iterator>
					</div>
				</div>
				<div id="carrubloq_next" class="carrubloq_bot active">
					<a id="carrubloq_nextimg" href="#" onclick="destacadoSig();return false;">></a>
				</div>
				<!-- ultimnove -->

				<div id="banners_home">
					<div class="banner">
						<s:property value="banner1" escapeHtml="false" />
					</div>
					<div class="banner last">
						<s:property value="banner2" escapeHtml="false" />
					</div>
				</div>
			</div>
			<%@include file="/include/foot.jsp"%>
		</div>
	</div>
</body>
</html>