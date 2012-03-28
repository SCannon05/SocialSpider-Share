<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://www.springframework.org/spring-social/social/tags" prefix="social" %>

<a href="<c:url value="/connect"/>">Connections</a>
<a href="<c:url value="/twitter"/>">Twitter</a>
<social:connected provider="twitter">
<ul class="menu">
	<li><a href="<c:url value="/twitter/timeline"/>">Tweet</a></li>
</ul>
</social:connected>
<a href="<c:url value="/facebook"/>">Facebook</a>
<social:connected provider="facebook">
<ul class="menu">
	<li><a href="<c:url value="/facebook/feed"/>">Post to Wall</a></li>
</ul>
</social:connected>
