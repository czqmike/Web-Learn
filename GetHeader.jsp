<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*, java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>头部请求实例</h2>
<table width="100%" border="1" align="center">
  <tr bgcolor="#949494">
    <th>Header Names</th>
    <th>Header Values</th>
  </tr>
  <%
    Enumeration headerNames = request.getHeaderNames();
    while(headerNames.hasMoreElements()) {
    	String paramName = (String) headerNames.nextElement();
    	String paramValue = request.getHeader(paramName);
    	out.print(
    	"<tr>" + 
    	"<td>" +  paramName + "</td>\n" +
    	"<td>" +  paramValue + "</td>\n" +
    	"</tr>\n");
    }
  %>
</table>
</body>
</html>