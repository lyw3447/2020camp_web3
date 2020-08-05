<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/xml" prefix="x" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>  

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL</title>
</head>
<body>
	
	<c:out value="${'Welcome to javaTpoint'}"/><br> 
	
	<c:import var="data" url="test.jsp"/>  
	<c:out value="${data}"/><br>
	
	<c:set var="income" scope="session" value="${4000*4}"/>  
	<p>Before Remove Value is: <c:out value="${income}"/></p>  
	<c:remove var="income"/>  
	<p>After Remove Value is: <c:out value="${income}"/></p><br>
	
	<c:catch var ="catchtheException">  
	<% int x = 2/0;%>  
	</c:catch>  
	
	<c:if test = "${catchtheException != null}">  
	<p>The type of exception is : ${catchtheException} <br />  
	There is an exception: ${catchtheException.message}</p>  
	</c:if>  <br>
	
	
	<c:set value="10" var="num"></c:set>  
	<c:choose>  
	<c:when test="${num%2==0}">  
	<c:out value="${num} is even number"></c:out>  
	</c:when>  
	<c:otherwise>  
	<c:out value="${num} is odd number"></c:out>  
	</c:otherwise>  
	</c:choose>  	<br><br>
	
	<c:forEach var="j" begin="1" end="3">  
	   Item Num <c:out value="${j}"/><p>  
	</c:forEach>  <br>
	
	<c:forTokens items="Yewon-Lee-22" delims="-" var="info">  
	   <c:out value="${info}"/><p>  
	</c:forTokens>		
	
	<c:set var="String" value="Welcome to JSP programming"/>  
  
	<c:if test="${fn:endsWith(String, 'programming')}">  
	   <p>Result-> String ends with programming<p>  
	</c:if>  
	  
	<c:if test="${fn:endsWith(String, 'JSP')}">  
	   <p>Result-> String ends with JSP<p>  
	</c:if>  

	<c:set var="str1" value="Welcome to JSP        programming         "/>  
	<p>String-1 Length is : ${fn:length(str1)}</p>  
	  
	<c:set var="str2" value="${fn:trim(str1)}" />  
	<p>String-2 Length is : ${fn:length(str2)}</p>  
	<p>Trimed value of string is : ${str2}</p>
	
	
	<c:set var="string" value="01234567890"/>  
	${fn:substring(string, 3, 7)}  <br>
	
	
	<c:set var="vegetable">  
	<vegetables>  
	    <vegetable>  
	      <name>onion</name>  
	      <price>40/kg</price>  
	    </vegetable>  	
	</vegetables>	
	</c:set><br><br>
	
	<x:parse xml="${vegetable}" var="output"/>  
	<b>Name of the vegetable is</b>:  
	<x:out select="$output/vegetables/vegetable[1]/name" /><br>  
	<b>Price of the Potato is</b>:  
	<x:out select="$output/vegetables/vegetable[1]/price" />  



</body>
</html>