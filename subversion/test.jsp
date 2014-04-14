<%@ taglib prefix="s" uri="/struts-tags" %>
<?xml version="1.0" encoding="UTF-8" ?>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Inserta title here</title>
</head>
<body>
3fd
<s:set var="tete" value="myMap"></s:set>
<s:set value="tete['w']">ddddd</s:set>
<s:set var="dede" value="'kkk'"></s:set>
<s:set var="dede" value="'kkk='+#tete"></s:set>

<s:property value="#dede" />ç
<s:property value="%{#dede}" />f
<s:property value="%{dede}" />r
<s:iterator status="status" value="tete">
<s:property value="#status.index"></s:property>e
<s:property value="%{key}"></s:property>
<s:property value="%{value}"></s:property>
</s:iterator>
hhhhhhhhhhhhhhhhhhhswssss
<s:set value="myMap['uno2']='valor1'"/>
<s:set value="myMap['dos']='valor2'"/>
<s:set value="myMap['tres']='valor3'"/>
<s:iterator status="status" value="myMap">
<s:property value="#status.index"></s:property>e
<s:property value="%{key}"></s:property>
<s:property value="%{value}"></s:property>
</s:iterator>


<s:set value="'ke'" var="uno"></s:set>
<s:set value="'uno'" var="runtimeKey"></s:set>
1<s:property value="%{#request.myMap['uno']}"/>
2<s:property value="%{#myMap['uno']}"/>
3<s:property value="%{myMap['uno']}"/>
4f<s:property value="myMap[#runtimeKey]"/>
5<s:property value="myMap"/>

gg
	<ul>
	<s:property value="#name" />
	<s:property value="name" />
	<s:text name='%{#name}'/>ip
	<s:text name='%{name}'/>pp
</ul>
	ff
	<br>
	<s:iterator status="status" value="aux">
	<li><s:property/></li>
	</s:iterator>
	<%@include file="/include/pagination.jsp"%>
</body>
</html>