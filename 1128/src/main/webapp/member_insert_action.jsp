<%@page import="java.awt.print.Printable"%>
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
	<table border="1"><tr>
	<th>name</th>
	<th>value</th>
	</tr>
	 
	 <%
	 	request.setCharacterEncoding("UTF-8");
	 
	 	Enumeration paramNames = request.getParameterNames();
	 	while (paramNames.hasMoreElements()) {
	 		String name = (String) paramNames.nextElement();
	 		out.print("<tr><td>" + name + " <td>\n");
	 		
	 			String[] paramValue = request.getParameterValues(name);
	 			if (paramValue != null) {
	 				for (int i=0; i<paramValue.length; i++) {
	 					out.println(" " + paramValue[i]);
	 				}
	 			}
	 			out.println("");
				}
	 	
	 	String memberID = request.getParameter("memberID");
	 	String passwd = request.getParameter("passwd");
	 	String passwdC = request.getParameter("passwdC");
	 	String memberName = request.getParameter("memberName");
	 	String email = request.getParameter("email");
	 	String[] interest = request.getParameterValues("interest");
	 	String zipcode = request.getParameter("zipcode");
	 	String address1 = request.getParameter("address1");
	 	String address2 = request.getParameter("address2");
	 	String birthYear = request.getParameter("birthYear");
	 	String birthMonth = request.getParameter("birthMonth");
	 	String birthDay = request.getParameter("birthDay");
	 	String mailYN = request.getParameter("mailYN");
	 	String smsYN = request.getParameter("smsYN");
	 	
	 %>
	 <tr><td><p>가입한 브라우져의 IP<td><%=request.getRemoteAddr() %></td></tr>
	 </table>
	 insert into member values(<%=memberID %>,<%=passwd %>,<%=passwdC %>,<%=email %>,
	 <%=interest %>,<%=zipcode %>,<%=address1 %>,<%=address2 %>,<%=birthYear %>,
	 <%=birthMonth %>,<%=birthDay %>,<%=mailYN %>,<%=smsYN %>)
</body>
</html>