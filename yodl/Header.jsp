<%@ page contentType="text/html" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <link type="text/css" rel="stylesheet" href="<c:url value='/Content/Site.css'/>?version=1.0.201205021213">
    <link type="text/css" rel="stylesheet" href="<c:url value='/Content/reset-fonts-grids.css'/>">
    <link type="text/css" rel="stylesheet" href="<c:url value='/Content/build/yui2p9/tabview/assets/skins/sam/tabview.css'/>">
    <link type="text/css" rel="stylesheet" href="<c:url value='/Content/build/yui2p9/autocomplete/assets/skins/sam/autocomplete.css'/>"> 
    <link type="text/css" rel="stylesheet" href="<c:url value='/Content/build/yui2p9/treeview/assets/skins/sam/treeview.css'/>">
    <link type="text/css" rel="stylesheet" href="<c:url value='/Content/assets/yui-examples/treeview/assets/css/folders/tree.css'/>"> 
    <link type="text/css" rel="stylesheet" href="<c:url value='/Content/build/yui2p9/carousel/assets/skins/sam/carousel.css'/>">
    <link type="text/css" rel="stylesheet" href="<c:url value='/Content/build/yui2p9/slider/assets/skins/sam/slider.css'/>">
    <link type="text/css" rel="stylesheet" href="<c:url value='/Content/build/yui2p9/menu/assets/skins/sam/menu.css'/>">
    <link type="text/css" rel="stylesheet" href="<c:url value='/Content/build/yui2p9/button/assets/skins/sam/button.css'/>">
    <link type="text/css" rel="stylesheet" href="<c:url value='/Content/bubbling.library/accordion/assets/accordion.css'/>">        
    <link rel="stylesheet" type="text/css" href="<c:url value='/Content/build/yui2p9/fonts/fonts-min.css'/>">
    <link rel="stylesheet" type="text/css" href="<c:url value='/Content/build/yui2p9/container/assets/skins/sam/container.css' />">
    <script type="text/javascript" src="<c:url value='/Content/build/yui2p9/yahoo-dom-event/yahoo-dom-event.js' />"></script>
    <!-- JA Added -->
    <script type="text/javascript" src="<c:url value='/Content/build/yui2p9/dragdrop/dragdrop-min.js' />"></script>
    <script type="text/javascript" src="<c:url value='/Content/build/yui2p9/container/container-min.js' />"></script>    


    <script type="text/javascript">
    
	  try{
		  var yodlingJSConfig = {context:"/yodl"};
	  }catch(e3){};	 
    </script>
    <script src="<c:url value='/Content/site-aggregate.js'/>?version=1.0.201205021213" type="text/javascript"></script>

    
<!--[if IE 6]>
<style>
	/*IE6 specific hack to support min-width and min-height*/ 
	#image-detail-wrapper img{
		width: 600px!important;
		height:auto!important;
	}
</style>
<![endif]-->

	<script type="text/javascript">
	  try{
	  	shiftzoom.defaultCurpath='images/cursors/';
	  }catch(e1){};
	  try{
	  	Seadragon.Config.imagePath="<c:url value='/Content/seadragon/img/'/>";
		Seadragon.Config.imagePath = String(Seadragon.Config.imagePath).replace(/;.*$/g,"");
	  }catch(e2){};
	</script>
    <script type="text/javascript">
        document.write('<style ' + 'type="text/css">');
        document.write('ul.searchFacet.filterResult {display:none;}');
        document.write('form#acl-login.acl li {display:none;}');
        document.write('<' + '/style>');
    </script>