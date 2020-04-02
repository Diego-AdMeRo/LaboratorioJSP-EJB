<%-- 
    Document   : index
    Created on : 14/03/2020, 03:06:19 PM
    Author     : Diego
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Calculadora Basica  - Laboratorio EJB - JSP</h1>

        <form action="./Calculador" name="Calculadora" method="POST">
            <input type="text" name="datos" id="datos"> 
            <input type="submit" name="envioDatos" value="="> <br> <br>
        </form>

        <% 
            char operadores [] = {'+','-','*','/', '^'};
            int a=0;
            for (int i = 1; i < 10; i++) {
                out.println("<input type=\"submit\" name=\"" + i + "\" value=\"" + i + "\" onclick=\"agregar("+i+")\">");
                if (i % 3 == 0) {
                    out.println("<input type=\"submit\" name=\"" + operadores[a] + "\" value=\"" + 
                            operadores[a]+ "\" onclick=\"agregar('"+operadores[a]+"')\">");
                    a++;
                    out.println("<br> <br>");
                }
            }
            out.println("<input type=\"submit\" name=\"0\" value=\"0\" onclick=\"agregar(0)\">");
            out.println("<input type=\"submit\" name=\".\" value=\".\" onclick=\"agregar('.')\">");
            out.println("<input type=\"submit\" name=\"" + operadores[3] + "\" value=\"" + 
                            operadores[3]+ "\" onclick=\"agregar('"+operadores[3]+"')\">");
            out.println("<input type=\"submit\" name=\"" + operadores[4] + "\" value=\"" + 
                            operadores[4]+ "\" onclick=\"agregar('"+operadores[4]+"')\">");
        %>
        
        <script>
            function agregar(i){
            document.getElementById("datos").value += i;
            }
        </script>





    </body>
</html>
