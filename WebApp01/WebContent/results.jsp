<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Collections"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
form.main input[type=text]{
width: 70%;
border-width:5px;
height:50px;
margin-top:80px;
}
form.main button{
width:10%;
border-width:5px;
height:50px;
font-size: 20px;
margin-top:80px;
}
body{
background-color: grey;}
h1{
color:blue;
text-align: center;
}
</style>
<title>TechRunner</title>
</head>
<body>
<h1>TechRunner</h1>
<div style="border:1px solid black">
<form class="main" action="NewServlet" style="margin: auto;max-width:1000px">
<input type="text"  name="search" >
<button type="submit" onclick="first()" value="Search">Search</button>
</form>
</div>
<div style="border:1px solid black">
<% String[] result =  (String[]) request.getAttribute("result");
Integer[] keys =  (Integer[]) request.getAttribute("keys");
String folderN =  (String) request.getAttribute("folder");
String[] doc =  (String[]) request.getAttribute("doclist");
ArrayList<String> reformedquery = (ArrayList<String>) request.getAttribute("search");

	
	if(reformedquery.size() >2){
	 out.print("<html><body><h3>Are you searching for ? </h3></body></html>");
			 int i=1;
	for(String s:reformedquery){
		out.print("<html><body style=font-size:20px>"+s+"</body></html>");
		if(i < reformedquery.size() ){
		out.print(" , ");
		}
	i++;
	}
	}
	
	out.print("<br/>");
	int i=0;

		for(String r:result){
		String Path = folderN + "/" + doc[keys[i++]-1];
			session.setAttribute("Path", Path.toString());
			out.println("<html><body><a href=/techrunner/document.jsp?path="+Path.toString()+"><li style=font-size:15px;padding:5px>"+r+"</li></a></body></html>");
			out.println("<br/><br/><br/><br/>");
		}

%>
</div>
<script>
function first() {
	<%
	
	%>
}
</script>

</body>
</html>