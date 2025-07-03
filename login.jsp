<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quiz App</title>
    <style>
form{
    border:2;
    border-radius:12px;
    box-shadow:0 0 12px;
    width:400px;
    height:300px;
} 

    </style>
</head>
<body>
<% 
    String myuser = request.getParameter("user");
    String mypass = request.getParameter("pass");

    if(myuser!=null && mypass!=null) 
    {
        if(myuser.equals("admin") && mypass.equals("nepal"))
    {
        response.sendRedirect("quiz.jsp");
        session.setAttribute("user","admin");
        session.setAttribute("score", "0");
    }
    else
    out.print("login failed");
    }
        
%>
<center>
    <form action="login.jsp">
   <table align="center">
    <tr>
        <th colspan="2"><h1>My Quiz App</h1></th>
    </tr>
    <tr>
        <td> User:</td>
        <td><input type="text" name="user" ></td>
    </tr>
     <tr>
        <td> Pass:</td>
        <td><input type="password" name="pass" ></td>
    </tr>
    <tr>
        <th colspan="2"><input type="submit" name="login"> </th>
    </tr>
   </table>
   </center>
</form>

</body>
</html>