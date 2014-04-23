<script type="text/javascript" src="/include/mapper.js"></script>
<script>
	function showbuscavanz(){
		document.getElementById("buscform").style.display="block";
		document.getElementById("showbusc").style.display="none";
		document.getElementById("hidebusc").style.display="inline-block";
	}
	function hidebuscavanz(){
		document.getElementById("buscform").style.display="none";
		document.getElementById("showbusc").style.display="inline-block";
		document.getElementById("hidebusc").style.display="none";
	}
	function showtipbus(tipoli,tipobusc){
        document.getElementById('buscavanz').style.display="none";
        document.getElementById('buscmap').style.display="none";
        document.getElementById('buscref').style.display="none";         
        document.getElementById('buscavanz_li').classList.remove("select");//NO FUNCIONA EN IE
        document.getElementById('buscmap_li').classList.remove("select");//NO FUNCIONA EN IE
        document.getElementById('buscref_li').classList.remove("select");//NO FUNCIONA EN IE
        document.getElementById(tipoli).classList.add("select");//NO FUNCIONA EN IE            
        document.getElementById(tipobusc).style.display="table";
    } 
</script>
<div id="buscador_top">
	<form id="buscform">    	      
		<div id="colseleccion">
			<ul>
				<li class="select" id="buscavanz_li"><a onclick="showtipbus('buscavanz_li', 'buscavanz')" href="#"><s:text name="busqueda.avanzada"/></a></a></li>
				<li id="buscmap_li"><a onclick="showtipbus('buscmap_li', 'buscmap')" href="#"><s:text name="busqueda.mapa"/></a></li>
				<li id="buscref_li"><a onclick="showtipbus('buscref_li', 'buscref')" href="#"><s:text name="busqueda.cuota"/></a></li>
				<li></li>
			</ul>
		</div>
		<div id="buscavanz">
			<div id="col1">
				<div class="bloque">
					<div class="number">1</div>
					<div class="contenido">
						<p class="seccion operacion">Operación</p>
						<label><input type="radio" name="operacion"/>Compra</label>
						<label><input type="radio" name="operacion"/>Alquiler</label>
						<label><input type="radio" name="operacion"/>Alquiler opción compra</label>
					</div>
				</div>
				<div class="bloque">
					<div class="number">2</div>
					<div class="contenido">
						<p class="seccion tipoinmu">Tipo de inmueble</p>
						<label><input type="radio" name="tipoin"/>Residencial</label>
						<div class="selectbox">
							<select>
								<option value="1">Ninguna</option>
								<option value="2">Dos</option>
								<option value="3">Tres</option>
							</select>
						</div>
						<label><input type="radio" name="tipoin"/>Terciario</label>
						<div class="selectbox">
							<select>
								<option value="1">Ninguna</option>
								<option value="2">Dos</option>
								<option value="3">Tres</option>
							</select>
						</div>                                    
						<label><input type="radio" name="tipoin"/>Suelo</label>
						<div class="selectbox">
							<select>
								<option value="1">Ninguna</option>
								<option value="2">Dos</option>
								<option value="3">Tres</option>
							</select>
						</div>
					</div>
				</div>    	                
			</div>
			<div id="col2">
				<div class="bloque">
					<div class="number">3</div>
					<div class="contenido">
						<p class="seccion locali">Localización</p>
						<label>Provincia</label>
						<div class="selectbox">
							<select>
								<option value="1">Seleccionar</option>
								<option value="2">Dos</option>
								<option value="3">Tres</option>
							</select>
						</div>
						<label>Localidad</label>
						<div class="selectbox">
							<select>
								<option value="1">Seleccionar</option>
								<option value="2">Dos</option>
								<option value="3">Tres</option>
							</select>
						</div>
						<p class="seccion camapana">Campaña</p>
						<div class="selectbox">
							<select>
								<option value="1">ninguna</option>
								<option value="2">Dos</option>
								<option value="3">Tres</option>
							</select>
						</div>
						<p class="seccion estado">Estado</p>
						<label><input type="checkbox"/>Obra nueva</label>
						<label><input type="checkbox"/>Segunda mano</label>
					</div>
					<div class="botonera">                              
						<input type="reset" value="Borrar datos">
						<input type="submit" value="Buscar >">
						<p><a href="#">Ver legal</a></p>
					</div>
				</div>
			</div>
		</div>
		<div id="buscmap">
			<div id="mapapais">
				<img src="/images/mapas/mapa_spain.png" alt="Mapa España" /> 
			</div>
			<div id="mapazona">
				<img class="mapper" usemap="#Map" name="mapa" alt="" src="/images/mapas/madrid.jpg"/>
				<map name="Map">                        
					<area shape="poly" class="iborderffffff icolorff0000 iopacity70"  coords="32,199,35,195,43,196,48,195,52,192,54,187,50,183,51,178,50,171,52,164,56,163,59,166,65,166,70,163,77,157,79,159,80,165,82,167,87,167,91,162,96,156,102,154,103,160,106,165,110,168,114,170,112,176,113,180,113,184,114,191,117,193,113,198,109,200,107,204,106,208,109,212,112,214,114,218,114,223,115,227,113,232,108,227,104,227,99,229,94,228,86,228,81,226,78,222,75,222,70,222,64,224,60,227,58,231,56,235,52,233,48,231,48,228,47,221,47,216,44,216,41,216,37,219,33,224,29,229,28,233,23,236,17,237,13,238,12,233,15,228,15,223,15,216,18,217,22,218,27,217,30,213,33,206" href="#" />
				</map>
			</div>
			<div class="botonera">                              
				<input type="reset" value="Borrar datos">
				<input type="submit" value="Buscar >">                            
			</div>
		</div>
		<div id="buscref">
            <div class="fila">
                <p class="seccion">¿Cuánto quieres pagar como máximo al mes?</p>
                <div class="radiobox">
                   <label><input type="radio" name="tipo" value=""/>Compra</label>
                   <label><input type="radio" name="tipo" value=""/>Alquiler</label>
                   <label><input type="radio" name="tipo" value=""/>Alquiler opción compra</label>
                </div>
                <div class="right">
                    <label>Provincia</label>
                    <div class="selectbox">
                        <select>
                            <option value="1">Seleccionar</option>
                            <option value="2">Dos</option>
                            <option value="3">Tres</option>
                        </select>
                    </div>
                    <label>Localidad</label>
                    <div class="selectbox">
                        <select>
                            <option value="1">Seleccionar</option>
                            <option value="2">Dos</option>
                            <option value="3">Tres</option>
                        </select>
                    </div>                            
                </div>
                <div class="linea">
                        <input type="text" value='Ejemplo "1000€"' id="some_name"/>
                         <input type="reset" value="Borrar datos">
                        <input type="submit" value="Buscar &gt;">
                        <p><a href="#">Ver legal</a></p>
                    </div>
           </div>
            <div class="fila">
                <p class="seccion">Escribe la referencia del inmueble y encuéntralo rápidamente</p>
                <div class="linea">
                    <input type="text" id="some_name" value="Ejemplo &quot;81155870&quot;">
                    <input type="reset" value="Borrar datos">
                    <input type="submit" value="Buscar &gt;">                            
                </div>
            </div>
       </div>
	</form>
	<p id="showbusc"><a onclick="showbuscavanz(); return false;" href="#"><span><s:text name="busqueda.buscador"/></span></a></p>
	<p id="hidebusc"><a onclick="hidebuscavanz(); return false;" href="#"><span><s:text name="busqueda.buscador"/></span></a></p>
</div>