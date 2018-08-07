<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">  
<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<%! String item = "email"; %>
	<h2>JSP Include Test</h2>
	<jsp:include page="date.jsp" flush="true"/>

	<jsp:element name="div">
	  <jsp:attribute name="class">
	  	input-group input-group-md
	  </jsp:attribute>
	  <jsp:body>
		<span class="input-group-addon"><%=item %></span>
		<input type="text" class="form-control" placeholder="请输入<%=item %>" aria-describedby="sizing-addon1" name="<%=item %>" id="<%=item %>" required>
	    </div>
	  </jsp:body>
	</jsp:element>
</body>
</html>