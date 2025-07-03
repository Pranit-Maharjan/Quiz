 <%
    if (session.getAttribute("user") == null) {
        out.print("Please login first");
        return;
    }
    int totalQuest=3;

    String[] question= new String[3];
    question[0]="What is the capital of Japan?";
    question[1]="Who is the president of Nepal?";
    question[2]="In which continent does Turkey lies?";

    String[] correctAns= new String[3];
    correctAns[0]="Tokyo";
    correctAns[1]="Ram Chandra Poudel";
    correctAns[2]="Europe";

    String[][] Answers= new String[3][4];
    Answers[0][0]="Kathmandu";
    Answers[0][1]="Tokyo";
    Answers[0][2]="Seoul";
    Answers[0][3]="Bejing";

    Answers[1][0]="K.P. Oli";
    Answers[1][1]="Bidhya Devi Bhandari";
    Answers[1][2]="Ram Chandra Poudel";
    Answers[1][3]="Prachanda";

    
    Answers[2][0]="Europe";
    Answers[2][1]="Asia";
    Answers[2][2]="North America";
    Answers[2][3]="Africa";

    String num=request.getParameter("num");
    int numb=0;
    String ans=request.getParameter("ans");
    int score = 0;
    score= Integer.parseInt((String) session.getAttribute("score").toString());
    if (num == null) 
        numb=0;
    else
        numb = Integer.parseInt(num);

    if (ans!=null)
    {
        if(ans.equals(correctAns[numb-1]))
    {
        out.print("correct answer");
        score++;
        session.setAttribute("score", score);
        
    }
     out.print("You got" + score + "out of 3");
    }
     if(numb==totalQuest)
        {
            response.sendRedirect("result.jsp");
            return;
        }
%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quiz App</title>
</head>
<body>
    <table align="center" >
        <tr>
            <th ><h1>My Quiz App</h1></th>
        </tr>
        <tr>
            <td><h2><%= question[numb]%></h2></td>
               
        </tr>
        <form ><tr> <td>
                <input type="radio" name="ans" value="<%= Answers[numb][0]%>"> <%= Answers[numb][0]%><br>
                <input type="radio" name="ans" value="<%= Answers[numb][1]%>"> <%= Answers[numb][1]%><br>
                <input type="radio" name="ans" value="<%= Answers[numb][2]%>"> <%= Answers[numb][2]%><br>
                <input type="radio" name="ans" value="<%= Answers[numb][3]%>"> <%= Answers[numb][3]%>
            </td></tr>
            <input type="hidden" name="num" value=<%= ++numb %>>
            <tr>
                <td>
                    <input type="submit" value="Next">
                </td>
            </tr></form>
    
    </table>
</body>
</html>