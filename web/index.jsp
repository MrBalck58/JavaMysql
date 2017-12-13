<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : index
    Created on : 23.11.2017, 19:26:16
    Author     : Денис
--%>
<sql:query var="subjects" dataSource="jdbc/IFPWAFCAD">
    SELECT subject_id, name FROM Subject
</sql:query>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>IFPWAFCAD</title>
        <link rel="stylesheet" type="text/css" href="css/style.css">
                
        <script src="http://code.jquery.com/jquery-2.2.4.js" type="text/javascript"></script>
        <script src="js/app-ajax.js" type="text/javascript"></script>
   
    </head>
    <body>
        <table border="1">
            <thead>
                <tr>
                    <th></th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td> 
                        <h1>   
                            Entry Form
                            <form name="Name input form" action="response.jsp">  
                                <input type="text" name="name"  /> 
                                <input type="submit" value="OK" />
                            </form>
                        </h1>
                    </td>
                    <td>
                        <span >
                            <form action="loginInputForm" >
                            Login: <input type="text" name =" loginName"/>
                            Password: <input type ="texp" name ="loginPass"/>
                            <input type="submit" value="Login" name="loginBtn" /> <br><br>
                            <a href="registration.jsp" > Registration </a>
                        </form>
                            </span>
                    </td>
                </tr>
            </tbody>
        </table>
       
        
        <p>
        <p style = "font-style:italic; font-size:200%"> jsp-jQuery example   <br/></p>
                                     
            Ваше имя : <input type="text" id="userName" /><br />
	    <span style="font-style:italic; font-size:75%"> сервлет ответит после потери полем курсора</span>
       
            <strong>Ответ сервлета </strong>:<span id="ajaxUserServletResponse"></span>      
        </p>
        
        <!--<div id="Verse5" style="display:block"> qqqqq </div>-->

        <table border="0">
            <thead>
                <tr>
                    <th>IFPWAFCAD offers expert counseling in a wide range of fields.</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>To view the contact details of an IFPWAFCAD certified former
                        professional wrestler in your area, select a subject below:</td>
                </tr>
                <tr>
                    <td>
                        <form action="response.jsp">
                            <strong> Select a subject:</strong>
                            <select name="subdject_id">
                                <c:forEach var="row" items="${subjects.rows}">
                                    <option value="${row.subject_id}">${row.name}</option>
                                </c:forEach>

                            </select>
                            <input type="submit" value="Отправить" name="Отправить" />
                        </form>
                    </td>
                </tr>
            </tbody>
        </table>

    </body>
</html>
