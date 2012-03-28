<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://www.springframework.org/spring-social/social/tags" prefix="social" %>

<h4><a href="<c:url value="/connect"/>">Connections</a></h4>

<h4><a href="<c:url value="/twitter"/>">Twitter</a></h4>
<social:connected provider="twitter">
<ul class="menu">
	<li><a href="<c:url value="/twitter/timeline"/>">Post to Timeline</a></li>

</ul>
</social:connected>

<h4><a href="<c:url value="/facebook"/>">Facebook</a></h4>
<social:connected provider="facebook">
<ul class="menu">
	<li><a href="<c:url value="/facebook"/>">Post to Wall</a></li>	<li><a href="<c:url value="/facebook/feed"/>">Feed</a></li>

</ul>
</social:connected>
