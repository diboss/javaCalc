<%-- 
    Document   : mainCalc
    Created on : Nov 23, 2015, 6:52:01 AM
    Author     : Seon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style type="text/css">

            body {
                 
                font: 20px Arial;
                background-color: white;
                color:  blue;

            }
            .newButton {width:100px; height: 100px; font-size: 20px}
        </style>
        <title>Web Calculator</title>
    </head>
    <body id="b1" onkeydown="getKey();" onload="document.frm.disp1.value = '0'">

        <form  name="frm" >
            <table align="center"   style="border-color: black; border-style: solid; border-width: 10px">
                <tr ><td colspan="4" > <input name="disp1" type="text" style=" font-size: 20px; border-color: blue;border-style: solid; border-width: 5px; text-align: right; width:  100%; height: 50px;"   id="t1"    disabled="true" /> </td> <td></td> <td></td><td></td></tr>
                <tr><td><INPUT class="newButton" type="button" value="7" onclick="buttClk(this);"/></td><td><INPUT class="newButton" type="button" value="8" onclick="buttClk(this);"/></td><td><INPUT class="newButton" type="button" value="9" onclick="buttClk(this);"/></td><td><INPUT class="newButton" type="button" value="/" onclick="buttClk(this);"/></td></tr>
                <tr><td><INPUT class="newButton" type="button" value="4" onclick="buttClk(this);"/></td><td><INPUT class="newButton" type="button" value="5" onclick="buttClk(this);"/></td><td><INPUT class="newButton" type="button" value="6" onclick="buttClk(this);"/></td><td><INPUT class="newButton" type="button" value="*" onclick="buttClk(this);"/></td></tr>
                <tr><td><INPUT class="newButton" type="button" value="1" onclick="buttClk(this);"/></td><td><INPUT class="newButton" type="button" value="2" onclick="buttClk(this);"/></td><td><INPUT class="newButton" type="button" value="3" onclick="buttClk(this);"/></td><td><INPUT class="newButton" type="button" value="-" onclick="buttClk(this);"/></td></tr>
                <tr><td><INPUT class="newButton" type="button" value="C" onclick="buttClk(this);"/></td><td><INPUT class="newButton" type="button" value="0" onclick="buttClk(this);"/></td><td><INPUT type="button" value="." class="newButton" onclick="buttClk(this);"/></td><td><INPUT class="newButton" type="button" value="+" onclick="buttClk(this);"/></td></tr>
                <tr ><td colspan="4" ><INPUT  style="width: 100%" class="newButton" type="button" value="=" onclick="doCalc();"/></td> <td></td> <td></td></tr>
            </table>
            <input type="hidden" name="hdn1"/>
        </form>

        <script type="text/javascript">
            var c;
            var d;
            function buttClk(obj) {

                var a = obj.value;

                if (a == undefined) {
                    a = obj;
                }
                var b = document.frm.disp1.value;
//                alert( b.indexOf("."))

                if (a == "/" || a == "*" || a == "-" || a == "+" || a == ".") {
                    if (a == "/" || a == "*" || a == "-" || a == "+") {
                        document.frm.hdn1.value = "";
                    }
//                   alert(b.length);
                    d = b.length - 1;
                    c = b.substr(d, d);

                    if (a == "." && (c == "/" || c == "*" || c == "-" || c == "+")) {
                        document.frm.disp1.value += "0.";
                        document.frm.hdn1.value = ".";
//                        if (b.indexOf(".") == 1) {
//                            return true;
//                        }
                    }
//                    alert("sub >>" +c+"<<");
                    if (c == "/" || c == "*" || c == "-" || c == "+" || c == ".") {
                        return true;
                    }
                }
                if (a == "C" || a == "c") {
                    document.frm.disp1.value = '0';
                    document.frm.hdn1.value = "";
                    return true;
                }
//                alert(isNaN(a))
                if (b == "0" && isNaN(a) == false) {
                    document.frm.disp1.value = '';
                }
                //Prevents multiple decimal points in a number
                if (document.frm.hdn1.value == "." && a == ".") {
                    return true;
                }
                document.frm.disp1.value += "" + a;

                if (a == ".") {
                    document.frm.hdn1.value = ".";
                }
//               alert(document.frm.disp1.value );
//                if (a == "/" || a == "*" || a == "-" || a == "+") {
//                    if (c == "/" || c == "*" || c == "-" || c == "+" || c == '' || c == ".") {
//                        return true;
//                    }
//                    doCalc();
//                }
            }

            function doCalc() {
//                alert('calc: ' + document.frm.disp1.value);

                var b = document.frm.disp1.value;
                document.frm.hdn1.value = "";
                d = b.length - 1;
                c = b.substr(d, d);
//                    alert("sub >>" +c+"<<");
                if (c == "/" || c == "*" || c == "-" || c == "+") {
                    return true;
                }
//                alert("calc: " + b + " : " + c);
                document.frm.disp1.value = eval(b);
//                alert("calc");

                //                document.getElementById("eqb").value

            }

            function getKey() {
                var x = event.key;
//                var y=String.fromCharCode(x);
//                alert(x);
               
                if (x >= 0 && x <= 9 || x == "Add" || x == "Divide" || x == "Multiply" || x == "Subtract" || x == "Decimal") {
                    if (x == "Add") {
                        x = "+";
                    }
                    if (x == "Divide") {
                        x = "/";
                    }
                    if (x == "Multiply") {
                        x = "*";
                    }
                    if (x == "Subtract") {
                        x = "-";
                    } else if (x == "Decimal") {
                        x = ".";

                    }
//                    alert(x);
                    buttClk(x);
                } else
                if (x == "C" || x == "c" || x == "Esc") {
                    document.frm.disp1.value = '0';
                    document.frm.hdn1.value = "";
                } else

                if (x == "=" || x == "Enter") {
                    doCalc();
                }
            }
        </script>
    </body>
</html>
