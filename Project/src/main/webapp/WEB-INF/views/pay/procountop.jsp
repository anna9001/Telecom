<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("UTF-8");
    String cp = request.getContextPath();  
	String count =request.getParameter("count");
%>


<c:forEach var="list" items="${list }">
	<c:choose>
		<c:when test="${list eq count}">
			<option value="${count }" selected="selected">${count }</option>
		</c:when>
		<c:otherwise>
			<option value="${list }" >${list }</option>
		</c:otherwise>
	</c:choose>
</c:forEach>
