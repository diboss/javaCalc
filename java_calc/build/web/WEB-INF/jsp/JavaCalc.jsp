<%-- 
    Document   : newjsp
    Created on : Nov 20, 2015, 4:22:22 PM
    Author     : Seon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
     
     
     
     <style type="text/css">
         
         body {
	line-height: 1; 
	font: 20px Arial;
	BACKGROUND-COLOR: #FFFFFF;
	COLOR: #333366;

	}
        .welcomebuttons{width:100px; height: 100px; font-size: 20px}
        .textStyle{font-size: 100px; text-align: center}
     </style>

        <title>Web Calculator</title>
    </head>
    <body>
        <FORM action="/java_calc/Calc">
        <table align="center" style="text-align: center; border-color: black; border-style: solid; border-width: 10px">
            <tr ><td></td><td class="textStyle">Welcome</td><td></td></tr>
             <tr><td></td><td class="textStyle">to the</td><td></td></tr>
              <tr><td></td><td class="textStyle">Web Calculator</td><td></td></tr>
              <tr><td></td><td><INPUT type="button" class="welcomebuttons" value="Exit" onclick="window.close();"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<INPUT class="welcomebuttons" type="submit" value="Continue"/></td><td></td></tr>
        </table>
        </FORM>
    </body>
</html>
