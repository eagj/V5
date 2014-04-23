<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<meta charset="UTF-8">
<!-- Metas -->
<title><s:property value="title" /></title>
<meta name="description" content="<s:property value="description"/>">
<meta name="keywords" content="<s:property value="keywords"/>">
<meta name="author" content="Urbaniza Interactiva">

<!-- HOJAS DE ESTILOS -->
<link rel="stylesheet" type="text/css" href="<s:url value='/styles/normalize.css'/>">
<link rel="stylesheet" type="text/css" href="<s:url value='/styles/style.css'/>">
<link rel="stylesheet" href="<s:url value='/include/jquery/nivo_slider/themes/default/default.css'/>" type="text/css" />	
<link rel="stylesheet" href="<s:url value='/include/jquery/nivo_slider/nivo-slider.css'/>" type="text/css" />
<!-- jquery bubbletip CSS -->
<link href="<s:url value='/include/jquery/bubbletip/bubbletip/bubbletip.css'/>" rel="stylesheet" type="text/css" />
<!--[if IE]>
<link href="<s:url value='/include/jquery/bubbletip/bubbletip/bubbletip.css'/>" rel="stylesheet" type="text/css" />
<![endif]-->

<!-- HOJAS DE ESTILOS LIGHTBOX-->
<link href="<s:url value='/include/fancyBox/source/jquery.fancybox.css?v=2.1.5'/>" rel="stylesheet" type="text/css" media="screen" />

<!-- INCLUDES JQUERY -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js" type="text/javascript"></script>
<script src="<s:url value='/include/jquery/nivo_slider/jquery.nivo.slider.js'/>" type="text/javascript"></script>
<!-- jquery bubbletip JS -->
<script src="<s:url value='/include/jquery/bubbletip/jQuery.bubbletip-1.0.6.js'/>" type="text/javascript"></script>
<!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->

<!-- INCLUDES JQUERY  LIGHTBOX-->
<script type="text/javascript" src="<s:url value='/include/fancyBox/source/jquery.fancybox.pack.js?v=2.1.5'/>"></script>
<script type="text/javascript" src="<s:url value='/include/fancyBox/source/helpers/jquery.fancybox-media.js?v=1.0.6'/>"></script>

<!-- Codigo Analytics -->
<jsp:include page="/include/analitics.html" flush="true"/>