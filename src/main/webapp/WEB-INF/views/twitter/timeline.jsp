<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf" %>
<%@ page session="false" %>

<script src="http://platform.twitter.com/anywhere.js?id=7yWLgCOuQhIpPyffm0o2Vg&v=1" type="text/javascript"></script>
<script type="text/javascript">
  twttr.anywhere(function (T) {
    T(".feed").linkifyUsers();
  });    
</script>
      
<h3>Your Twitter <c:out value="${timelineName}"/> Timeline</h3>

<h4>Post a tweet</h4>
<c:url var="tweetUrl" value="/twitter/tweet" />
<form action="${tweetUrl}" method="post">
	<textarea name="message" rows="2" cols="80"></textarea><br/>
	<input type="submit" value="Post Tweet"/>
</form>

