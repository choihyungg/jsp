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
	 	/* while (paramNames.hasMoreElements()) {
	 		String name = (String) paramNames.nextElement();
	 		out.print("<tr><td>" + name + " <td>\n");
 			String paramValue = request.getParameter(name);
	 		out.println("<td> ");
			out.println(" " + paramValue);
	 		out.println("</td></tr>\n");
		}*/
	 	
	 	while (paramNames.hasMoreElements()) {
	 		StringBuffer info = new StringBuffer((String) paramNames.nextElement());
	 		out.print("<b>" + info + "</b>" + " : " + "\n");
	 		
	 		String infoValue = request.getParameter(info.toString());
	 		out.println(infoValue + "<br>");
	 	}
	%>

</body>
</html>