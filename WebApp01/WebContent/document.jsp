<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.net.URL"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
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
        #maindiv{
            border: 1px solid black;
            font-size: 15px;
            padding: 5px;
        }
        h1{
            color:blue;
            text-align: center;
        }
        body{
            background-color: grey;}
    </style>
    <title>Document</title>
</head>
<body>
<h1>Result Document</h1>
<div>
    <%
        String path =  (String) request.getParameter("path");
        System.out.println(path);
        StringBuilder sb = new StringBuilder();
        String line;
        String line1;
        BufferedReader reader1 = new BufferedReader(new FileReader(path));
        while((line1 = reader1.readLine())!= null){
              sb.append(line1 + "\r\n");
          }
        reader1.close();
        out.println("<html><body><li style=font-size:15px;padding:5px>"+sb.toString()+"</li></body></html>");
    %>
</div>
</body>
</html>