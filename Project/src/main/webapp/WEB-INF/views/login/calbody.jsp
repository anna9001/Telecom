<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
    String cp = request.getContextPath();  
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<tbody>
	
	

	<tr>
		<c:forEach var="dateList" items="${dateList}" varStatus="date_status"> 
			<c:choose>
				<c:when test="${dateList.value=='today'}">
					<td class="today">
						<div class="date">
						 ${dateList.date} 	<br/>
	
						  <input type="button" value="출석도장찍기" style="valign:center;"onClick="location.href='checkevent.action'">
					
			  
						</div>
						 <div>
						</div> 
					</td>
				</c:when>	
				<c:when test="${date_status.index%7==6}"> 
					<td class="sat_day">
						<div class="sat">
							${dateList.date}
							
						</div>
						<div>
						</div>
					</td>
				</c:when>
				
				<c:when test="${date_status.index%7==0}">
	</tr>
	<tr>	
		<td class="sun_day">
			<div class="sun">
				${dateList.date}&nbsp;&nbsp;
				
			</div>
			<div>
			</div>
		</td>
				</c:when>
				
				
				<c:otherwise>
		<td class="normal_day">
			<div class="date">
				${dateList.date}
				
			</div>
			<div>
			
			</div>
		</td>
				</c:otherwise>
			</c:choose>
		</c:forEach>
	
	 </tr>
		
</tbody>
</body>
</html>