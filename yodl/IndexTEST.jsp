<%@ page contentType="text/html"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<div id="yui-main">
	<div class="yui-b">
		<div id="head-mini" role="complementary" class="yui-g">
			<div class="unit">
				
				
				<h2>
					Welcome to the York Digital Library
				</h2>
				York Digital Library (YODL) is a University-wide digital library
				service for multimedia resources.
			</div>
		</div>
		<div class="yui-g searchAll">
			<div role="search">
				<div class="unit">
					<div
						class="panel outer roundedcornr_box_321639 cs-onHover cs-call-cs-label-search">
						<div class="roundedcornr_top_321639">
							<div></div>
						</div>
						<div class="roundedcornr_content_321639 dl-home">
							<h2 class="icon search">
								Search
							</h2>
							<form method="get" action="<c:url value='/app/home/search'/>">
								<div class="searchInputRgn searchFront">
									<jsp:include page="/WEB-INF/Views/Shared/MediaType-Nav.jsp"></jsp:include>
									<span class="siteSearchinput"> <label
											for="searchFrontPage" style="display: none;">
											Search input box with autosuggest
										</label> <input type="text" id="searchFrontPage" name="query" value="" />
									</span>
									<input id="SearchBtn" class="searchAll" type="submit" value="Search" />
									<img alt="search in progress loader"
										src="<c:url value='/Content/assets/images-fg/loader-blue1-0.gif'/>"
										id="imageLoader" />
									<div id="searchFrontPageContainer"></div>
								</div>
							</form>
							<!-- JA Added Starts -->
							<div style="margin-top: 50px" id="mine"><sec:authorize access="not fullyAuthenticated">
								<form method="post" action="<c:out value='${loginUrl}'/>" id="acl-login" class="acl">
									
									<ul class="acl" style="background-color: #FFFFFF">
										
										<li class="fade message">
											<a id="mine" class="mine" href="<c:url value='/app/home/login'/>"><span id="mine"><img id="mine" alt="York users login"
												src="<c:url value='/Content/assets/images-fg/yodl-login.png'/>"/></a></span>
										</li>
										
									</ul>
								</form>	
							</sec:authorize>
							<!-- JA Added Ends -->

							</div>
						</div>
							<div class="roundedcornr_bottom_321639">
							<div></div>
						</div>						
					</div>
				</div>
			</div>
		</div>
		
		<div class="yui-g">
			<div class="unit">
				<div
					class="panel outer roundedcornr_box_321639 cs-onHover cs-call-cs-label-search">
					<div class="roundedcornr_top_321639">
						<div></div>
					</div>
					<div class="roundedcornr_content_321639 dl-home">
          <!--
            <div id="homeTabs" class="yui-navset">
              <ul class="yui-nav">
                  <li><a href="#tab1" class="selected"><em>Featured Images</em></a></li>
                  <li><a href="#tab2"><em>Popular subjects</a></li>
              </ul>            
              <div class="yui-content">
                  <div id="tab1">


                  </div>
                  <div id="tab2">
                   </div>
              </div>
              -->
                    <div id="carousel-home">
                        <ol id="carousel"></ol>
                    </div>
                    <!--
                    <div id="popular-search-home">
                      <div class="bubble-note cloud">
                        <c:forEach  items="${popularSubjects}" var="currentTerm">
                        <c:url value="/app/home/search" var="popularSearchURL">
                          <c:param name="queryType">null</c:param>
                          <c:param name="query">*:*</c:param>
                          <c:param name="facet.dc.subject"><c:out value='${currentTerm.key}'/></c:param>
                        </c:url>
                        <a title="<c:out value='${currentTerm.key}'/>"
                          href="<c:out value='${popularSearchURL}'/>" class="tag_cloud"
                          style="<c:out value='font-size:${currentTerm.value}px;'/>"><c:out value="${currentTerm.key}"/></a>
                        </c:forEach>
                      </div>
                    </div>
                 -->
              
            

						

					</div>
					<div class="roundedcornr_bottom_321639">
						<div></div>
					</div>
				</div>

			</div>
		</div>
	</div>
</div>
<div role="navigation" class="yui-b">
	<div class="unit">
		<div class="myAccordion dl-home">
			<div>
				<div
					class="yui-cms-accordion fade fixIE slow outer roundedcornr_box_321639">
					<div class="roundedcornr_top_321639">
						<div></div>
					</div>
					<div class="roundedcornr_content_321639">
						<div class="yui-cms-item">

							<h3>
								<a href="#" class="accordionToggleItem" title="click to expand">Need
									help?</a>
							</h3>
							<div class="bd">
								<div class="fixed">
									<div id="cs-label-search">
										<h4>
											Search Tips
										</h4>
										<p>
											To begin, enter your search term into the search box and
											click search. Suggestions may be provided depending on
											content, these should help identify/correct the terms.
										</p>
									</div>
									<div id="cs-label-browse">
										<h4>
											Popular subjects
										</h4>

										<p>
											Click on a term drawn from the most frequent subject areas  
											or alternatively use <a href="<c:url value='/app/collection/browse'/>">browse</a> to navigate to a collection of interest.  
                                                                                </p>
									</div>
                                                                        <div id="cs-label-list">
                                                                            <p>
                                                                             <ul>
                                                                              <li>
                                                                                    <a href="https://wiki.york.ac.uk/display/dlib/YODL+User+Guidelines">YODL User Guidelines</a>
                                                                                </li>
                                                                                <li>
										    <a href="https://wiki.york.ac.uk/display/dlib/Current+issues">Known issues</a>
                                                                                </li>
                                                                                <li>
										    <a href="https://wiki.york.ac.uk/x/6QFH">How to find exam papers in YODL</a>
                                                                                </li>
                                                                            </ul>
                                                                        </p>
                                                                        </div>
								</div>
							</div>
						</div>

						<div class="yui-cms-item loadRSS">
							<h3>
								<a href="#" class="accordionToggleItem" title="click to expand">News
									Feed</a>
							</h3>
							<c:import url="../Shared/RSS-YODLWP.jsp"/>
							
						</div>
						<div class="yui-cms-item">
							<h3>
								<a href="#" class="accordionToggleItem" title="click to expand">Find
									out more</a>
							</h3>
							<div class="bd">
								<div class="fixed">
									<ul>
										<li>
											<a target="_blank"
												href="http://www.york.ac.uk/library/electroniclibrary/yorkdigitallibraryyodl/">About</a>
										</li>
										<li>
											<a href="mailto:dlib-info@york.ac.uk">Contact</a>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="roundedcornr_bottom_321639">
						<div></div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script>
	setTimeout(function() {
	var popurls=new Array()
popurls[0]="http://dlibtest.york.ac.uk/survey.html"

function openpopup(popurl){
var iMyWidth = (window.screen.width/2) - (75 + 10);
	//half the screen height minus half the new window height (plus title and status bars).
	var iMyHeight = (window.screen.height/2) - (100 + 50);
var winpops=window.open(popurl,"","width=600,height=400,left=" + iMyWidth + ",top=" + iMyHeight + ",screenX=" + iMyWidth + ",screenY=" + iMyHeight + ",toolbar,location,status,scrollbars,menubar,resizable")

  
}

function get_cookie(Name) {
  var search = Name + "="
  var returnvalue = "";
  if (document.cookie.length > 0) {
    offset = document.cookie.indexOf(search)
    if (offset != -1) { // if cookie exists
      offset += search.length
      // set index of beginning of value
      end = document.cookie.indexOf(";", offset);
      // set index of end of cookie value
      if (end == -1)
         end = document.cookie.length;
      returnvalue=unescape(document.cookie.substring(offset, end))
      }
   }
  return returnvalue;
}

function loadornot(){
if (get_cookie('jkpopup')==''){
openpopup(popurls[Math.floor(Math.random()*(popurls.length))])
document.cookie="jkpopup=yes"
}
}

loadornot()	
	},1250);	
</script>