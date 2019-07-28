--Entire_data folder conatins 2000 documents numbered from 001 to 999 and cv_01000 to cv_02000.

--These documents are assined as document Ids numbered from 1 to 2000 in the business logic.

--package is com.javalab.sample

--src folder contains servlets and java classes for business logic 

-- index.jsp, results.jsp are home page and the result page of the application. 

-- single and multiple keyword query is implemenetd using vector space model.

-- wildcard query(*) implemented for single and two keyword query terms.  

-- spelling checker implemented.

-- a line of text is presented to the user as a summary of the entire document as result. 

-- Apache Tomcat version 9 is used to run the code on server. 

-- Input for single term query say "vodafone" is expected to have output with documents which are 
relevant to vodafone. More examples of input and expected output can be found in the document
attached. 

--Class Details
Matrix.class 
Contains all the core algorithm logic for the Vector Space Model.
The constructor builds the required index and the rankSearch() function takes the query and gives the results.It also contains functions that help perform wild card search and spell check with edit distance implemented using DP.

NewServlet.class
This class is the servlet which takes the request processes the request and returns the response.This class also sets the parameters for the subsequent JSP pages(document.jsp)

The index.jsp and results.jsp  are the frontend pages which take in the request and  render the response.

The document.jsp page will allow the user to view the full document as the results page will show only the first line of the retrieved document

This project is a Web Application project and hence requires an apache tomcat server which acts an an application server.
