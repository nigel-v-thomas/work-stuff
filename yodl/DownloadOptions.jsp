<%@ page contentType="text/html" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!-- THOUGHT: alert for different content types? remove thumbnail unless image; display xml for openart -->

<ul id="download_options">
   <c:forEach items="${image.allAssets}"  var="asset">
   	<c:if test="${not fn:contains(asset.mimeType, 'xml')}">
     <li>
      <a href="<c:url value='/api/resource/${image.resourceID}/asset/${asset.assetID}?download=true'/>"><c:out  value="${asset.label}"/></a>
     </li>
     </c:if>
     <li><a id="show1" href="#panel1">(Problems Downloading?)</a></li>
   </c:forEach>
</ul>
<!-- JA Added  -->
<div id="panel1">
<a id="panel1"></a>
  <div class="hd">Download Help</div>
  <div class="bd"><p>Here is some help about logging in.</p><p>Here is some help about logging in.</p><p>Here is some help about logging in.</p><p>Here is some help about logging in.</p><p>Here is some help about logging in.</p></div>
  <div class="ft">drag this box to move it or click 'X; to close</div>
</div>
<div>
</div>
<script>
    YAHOO.namespace("example.container"); 
    // Instantiate a Panel from markup
YAHOO.example.container.panel1 = new YAHOO.widget.Panel("panel1", { width:"320px", visible:false, constraintoviewport:true } );
YAHOO.example.container.panel1.render();
YAHOO.util.Event.addListener("show1", "click", YAHOO.example.container.panel1.show, YAHOO.example.container.panel1, true);

 
</script>







