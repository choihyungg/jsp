<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	 <%
	 	request.setCharacterEncoding("UTF-8");
	 
	 	Enumeration paramNames = request.getParameterNames();
	 	while (paramNames.hasMoreElements()) {
	 		String name = (String) paramNames.nextElement();
	 		out.print("<tr><td><b>" + name + " </b><td>\n");
 			String[] paramValue = request.getParameterValues(name);
	 		out.println("<td> ");
	 			if (paramValue != null) {
	 				for (int i=0; i<paramValue.length; i++) {
	 					out.println(" " + paramValue[i]);
	 				}
	 			}
	 			out.println("</td></tr>\n");
				}
	 %>

</body>
</html>