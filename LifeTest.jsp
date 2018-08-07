<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Life Test</title>
</head>
<body>

<%!
  private int initVar = 0;
  private int serviceVar = 0;
  private int destroyVar = 0;
%>

<%!
  public void jspInit() {
      initVar ++;
      //System.out.println("inited " + initVar + " times");
  }

  public void jspDestroy() {
      destroyVar ++;
      //System.out.println("destroyed " + destroyVar + " times");
  }
%>

<%
  serviceVar ++;
  //System.out.println("serviced " + serviceVar + " times");

  String content1 = "initVar = " + initVar;
  String content2 = "serviceVar = " + serviceVar;
  String content3 = "destroyVar = " + destroyVar;
%>

<h1>JSP Life Test</h1>
<p> <%=content1 %>  </p>
<p> <%=content2 %>  </p>
<p> <%=content3 %>  </p>
<p>
    今天的日期是: <%= (new java.util.Date()).toLocaleString()%>
</p>
<% int fontSize = 0; %>
<% for (fontSize = 1; fontSize <= 3; ++fontSize){ %>
<font color="green" size="<%=fontSize %>">font test</font>
<br/>
<%} %>
</body>
</html>
