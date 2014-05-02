<script>
	function showfoot(){
	    document.getElementById("mapaweb").style.display="inline";
	    document.getElementById("mapawebshow").style.display="none";
	    document.getElementById("mapawebhide").style.display="inline";
	}
	function hidefoot(){
		document.getElementById("mapaweb").style.display="none";
	    document.getElementById("mapawebshow").style.display="inline";
	    document.getElementById("mapawebhide").style.display="none";
	}
</script> 
<footer>
    <!-- Este P se muestra cuando la caja esta plegada -->
    <p id="mapawebshow" class="mapawebshow"><a  onclick="showfoot();" href="#footercontent"><s:text name="foot.mapa.web"/> <span>&and;</span></a></p>
    
    <!-- Este P se muestra cuando la caja esta desplegada -->
    <p id="mapawebhide" class="mapawebhide" style="display:none;"><a onclick="hidefoot();" href="#footercontent"><s:text name="foot.mapa.web"/> <span>&or;</span></a></p>
     <div id="mapaweb" style="display:none;">
         <div id="colizqda">
             <div class="col">
                 <h5><a href="#"><s:text name="foot.residencial"/></a></h5>
                 <ul>
                 	<li><a href="#"><s:text name="global.compra"/></a>
                 	    <ul>
                 	        <li><a href="/pages/guiacompra"><s:text name="foot.guia.compra"/></a></li>
                 	    </ul>
                 	</li>
                 	<li><a href="/pages/alquiler"><s:text name="global.alquiler"/></a>
                 	    <ul>
                 	        <li><a href="#"><s:text name="foot.guia.alquiler"/></a></li>
                 	    </ul>
                 	</li>
                 	<li><a href="#"><s:text name="foot.sobre.plano"/></a></li>
                 	<li><a href="#"><s:text name="foot.novedades"/></a></li>
                 	<li><a href="/pages/financiacion"><s:text name="foot.financiacion"/></a></li>
                 	<li><a href="#"><s:text name="foot.alertas"/></a></li>
                 	<li><a href="/pages/pasos"><s:text name="foot.pasos"/></a></li>
                 </ul>
             </div>
             <div class="col">
                 <h5><a href="#"><s:text name="foot.terciarios"/></a></h5>
                 <ul>
                    <li><a href="#"><s:text name="global.compra"/></a>
                        <ul>
                            <li><a href="/pages/guiacompra"><s:text name="foot.guia.compra"/></a></li>
                        </ul>
                    </li>
                    <li><a href="/pages/alquiler"><s:text name="global.alquiler"/></a>
                        <ul>
                            <li><a href="#"><s:text name="foot.guia.alquiler"/></a></li>
                        </ul>
                    </li>
                    <li><a href="#"><s:text name="foot.sobre.plano"/></a></li>
                 	<li><a href="#"><s:text name="foot.novedades"/></a></li>
                 	<li><a href="/pages/financiacion"><s:text name="foot.financiacion"/></a></li>
                 	<li><a href="#"><s:text name="foot.alertas"/></a></li>
                 	<li><a href="/pages/pasos"><s:text name="foot.pasos"/></a></li>
                 </ul>
             </div>
             <div class="col">
                 <h5><a href="#"><s:text name="foot.suelo"/></a></h5>
                 <ul>
                 	<li><a href="#"><s:text name="foot.suelos"/></a></li>
                 	<li><a href="#"><s:text name="foot.parcelas"/></a></li>
                 	<li><a href="#"><s:text name="foot.rusticos"/></a></li>
                 </ul>
                  <h5><a href="#"><s:text name="foot.inversores"/></a></h5>
                  <ul>
                  	<li>
                  		<ul>
                  			<li><a href="#"><s:text name="foot.catalogos"/></a></li>
                  		</ul>
                  	</li>
                  </ul>
                   <h5><a href="#"><s:text name="foot.campanas"/></a></h5>
             </div>
             <div class="col">
                <h5><a href="#"><s:text name="foot.actualidad"/></a></h5>                         
                <ul>
                    <li><a href="#"><s:text name="foot.noticias"/></a></li>
                    <li><a href="#"><s:text name="foot.blog"/></a></li>
                </ul>
                  <h5><a href="#"><s:text name="foot.fondo"/></a></h5>
             </div>
         </div>                
         <div id="coldcha">
             <p><s:text name="foot.solicitar"/></p>
             <ul>
             	<li><s:text name="foot.llama"/></li>
             </ul>
             <p class="tfno"><img src="/images/tfno_head.png"><s:text name="foot.902"/></p>
             <ul class="contact">
             	<li><s:text name="foot.contacta"/></li>
             </ul>
             <a href="#"><s:text name="foot.contacto"/> ></a>
         </div>
     </div>
    <div class="footercontent" id="footercontent">
        <div class="col1">
             <a href="#" class="logofoot openbank"><img alt="Openbank" src="/images/logo_openbank_foot.png"></a>
            <a href="#" class="logofoot santander"><img alt="Banco de Santander" src="/images/logo_altamira_foot.png"></a>
        </div>
        <div class="col2">
            <ul>
                <li><a href="#"><s:text name="foot.altamira"/> </a></li>
                <li><a href="#"><s:text name="global.aviso"/></a></li>
                <li><a href="#"><s:text name="foot.sobre.altamira"/> </a></li>
            </ul>
        </div>
        <div class="col3">
        	<s:bean name="com.altamira.dominio.vista.RedSocial" var="variable"></s:bean>
			<ul>
				<s:iterator value="#variable.items">
				<li id="<s:property value="image"/>"><a href="<s:property value="url"/>">&nbsp;</a></li>
				</s:iterator>
			</ul>
        </div>
    </div>
</footer>
<div id="avislegal_ficha" style="display:none;">
	<h4><s:text name="global.aviso.titulo"/></h4>
	<s:text name="global.aviso.cuerpo"/>
</div>