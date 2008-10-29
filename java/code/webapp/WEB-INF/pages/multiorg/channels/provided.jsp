<%@ taglib uri="http://jakarta.apache.org/struts/tags-html" prefix="html" %>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-bean" prefix="bean" %>
<%@ taglib uri="http://rhn.redhat.com/rhn" prefix="rhn" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html:xhtml/>
<html>

<head>
<script src="/javascript/channel_tree.js" type="text/javascript"></script>
<script type="text/javascript">
var filtered = ${requestScope.isFiltered};
function showFiltered() {
  if (filtered)
    ShowAll();
}
</script>
</head>

<body onLoad="onLoadStuff(3); showFiltered();"> 

<html:messages id="message" message="true">
  <rhn:messages><c:out escapeXml="false" value="${message}" /></rhn:messages>
</html:messages>

<rhn:toolbar base="h1" img="/img/rhn-icon-org.gif">
  ${trustorg}
</rhn:toolbar>

<rhn:dialogmenu mindepth="0" maxdepth="3" 
                    definition="/WEB-INF/nav/org_trust.xml" 
                    renderer="com.redhat.rhn.frontend.nav.DialognavRenderer" /> 

<p>
	<bean:message key="orgtrust.jsp.channelprovide.summary" arg0="${trustorg}" />
</p>

<%@ include file="/WEB-INF/pages/common/fragments/channel/channel_tree.jspf" %>

</body>
</html>
