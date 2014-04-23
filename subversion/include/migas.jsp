<script type="text/javascript">
	function showosubmigas(idsubmenu) {
		document.getElementById(idsubmenu).style.display = "block";
		document.getElementById(idsubmenu).parentNode.classList.add("desple");//NO FUNCIONA EN IE

	}
</script>
<div id="migas">
	<ul>
		<li class="bread1"><a href="#">Inicio</a></li>
		<li class="bread2 sub"><a href="#"
			onclick="showosubmigas('submigas1')">Residencial</a>
			<div class="submigas" id="submigas1">
				<select id="tuprovincia" name="tuprovincia">
					<option value="1">Lorem</option>
					<option value="2">Ipsum</option>
					<option value="3">Dolore</option>
					<option value="4">Sit amet</option>
				</select>
			</div></li>
		<li class="bread3 sub"><a href="#"
			onclick="showosubmigas('submigas2')">Compra</a>
			<div class="submigas" id="submigas2">
				<select id="tuprovincia" name="tuprovincia">
					<option value="1">Álava</option>
					<option value="2">Albacete</option>
					<option value="3">Alicante</option>
					<option value="4">Almería</option>
				</select>
			</div></li>
		<li class="bread4 sub"><a href="#"
			onclick="showosubmigas('submigas3')">Madrid</a>
			<div class="submigas" id="submigas3">
				<select id="tuprovincia" name="tuprovincia">
					<option value="1">Álava</option>
					<option value="2">Albacete</option>
					<option value="3">Alicante</option>
					<option value="4">Almería</option>
				</select>
			</div></li>
	</ul>
</div>