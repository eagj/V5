<script>
	function showlogin(){
		if(document.getElementById("login").style.display=="block"){
			document.getElementById("login").style.display="none";
		}else{
			document.getElementById("login").style.display="block";
		}
	}
	function showsubmenu(cmenu){
		if(document.getElementById("sub"+cmenu).style.display=="inline"){
			document.getElementById("sub"+cmenu).style.display="none";
			document.getElementById("sub"+cmenu).style.height=0+"px";
		}else{
			document.getElementById("sub"+cmenu).style.display="inline";
			document.getElementById("sub"+cmenu).style.height=36+"px";
		}
	}
	function showmenu(cmenu){
		//alert(cmenu+": "+"<s:property value='#session.menu[1].literal'/>");
		//alert(cmenu+": "+"<s:property value='#session.menu[1].literal'/>");
	    //document.getElementById("sub1").style.display="inline";
	    //document.getElementById("sub1").style.height=36+"px";

	    var tmp = 0;
		<s:iterator value="#session.menu" id="menu">
			tmp = "<s:property value='#menu.cmenu'/>";

			//alert("<s:property value='#menu.cmenu'/>"+" : "+"<s:property value='#menu.url'/>");
			
			if (tmp==cmenu){
				<s:if test="%{#menu.submenus.size>0}">
					//alert(tmp+" tiene "+"<s:property value='#menu.submenus.size'/>"+" hijos ");
					//Si entra aqui mostramos el submenu
					showsubmenu(cmenu);
				</s:if>
				<s:else>
					//Si entra aqui redirigimos
					//alert("<s:property value='#menu.url'/>");
					window.location.replace("<s:property value='#menu.url'/>");
				</s:else>
			}
		</s:iterator>
	    
	}
	function showovermap(hide,show){
	    document.getElementById(hide).style.visibility="hidden";
	    document.getElementById(show).style.visibility="visible";
	}
</script> 

<nav>
	<div id="contenidonav">
		<ul>
			<s:set name="menuselected" value="%{#menuSelected}"/>

			<s:iterator value="#session.menu" id="menu">
				<s:if test="%{#menu.cmenu==8}">
				    <li class="areapriv"><a onclick="showlogin(); return false;" href="#">
				</s:if>
				<s:elseif test="%{#menu.cmenu==#menuselected}">
					<s:if test="%{#menu.cmenu==1}">
					    <li class="first select"><a onclick="showmenu(<s:property value="#menu.cmenu"/>); return false;" href="#">
					</s:if>
					<s:else>
				    	<li class="select"><a onclick="showmenu(<s:property value="#menu.cmenu"/>); return false;" href="#">
					</s:else>
				</s:elseif>
				<s:elseif test="%{#menu.cmenu==1}">
					<li class="first"><a onclick="showmenu(<s:property value="#menu.cmenu"/>); return false;" href="#">
				</s:elseif>
				<s:else>
				    <li><a onclick="showmenu(<s:property value="#menu.cmenu"/>); return false;" href="#">
				</s:else>
				
				<s:property value="#menu.literal"/></a></li>
			</s:iterator>
		</ul>
		<div class="subnav" id="sub1">
			<ul>
				<li><a href="#">Compra</a></li>
				<li><a href="#">Alquiler</a></li>
				<li><a href="#">Alquiler opción a compra</a></li>
				<li><a href="#">Sobre plano</a></li>
				<li><a href="#">Novedades</a></li>
				<li><a href="#">Financiación</a></li>
				<li><a href="#">Alertas</a></li>
			</ul>
		</div>
		<div id="login">
			<p>
				<s:text name="cabecera.menu.area.privada"/> <a href="#"><s:text name="global.aqui"/></a>
			</p>
			<form>
				<input type="text" placeholder="Email" /> <input type="text"
					placeholder="<s:text name="cabecera.menu.contrasena"/>" />
				<p class="recupass">
					<a href="#"><s:text name="cabecera.menu.recuperar"/></a>
				</p>
				<input type="submit" value="<s:text name="cabecera.menu.entrar"/> >" />
			</form>
		</div>
	</div>
</nav>