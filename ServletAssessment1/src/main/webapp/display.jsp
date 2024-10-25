<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Display</title>
</head>

<style>
*{
        padding: 0;
        margin: 0;
        box-sizing: border-box;
    }
    .display-flex{        
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
    }
    body{
        width: 100%;
        height: 100dvh;
    }

    .container{
        width: 50%;
        background-color: rgb(56, 55, 55);
        color: white;
        padding: 30px;
    }
    table{
        width: 100%;
        background-color: black;
    }
    tr{
        width: 100%;
        height: 50px;
    }
    th{
        width: 50%;
    }
    td{
        width: 50%;
        height: 100%;
        text-align: left;
        padding-left: 30px;
        font-size: 1em;
        font-weight: 600;
        background-color: rgb(79, 77, 77);
    }
    
</style>


<%
		if(request.getParameter("studentName") == null){
			RequestDispatcher rd = request.getRequestDispatcher("studentForm.html");
			rd.forward(request, response);
		}

		String studentName = request.getParameter("studentName");
		String studentAge = request.getParameter("studentAge");
		String studentNumber = request.getParameter("studentNumber");
		String studentAddress = request.getParameter("studentAddress");
		String studentCourse = request.getParameter("studentCourse");
		String studentQual = request.getParameter("studentQual");
%>

<body class="display-flex">
<div class="container">
        <table border="1">
            <thead>
                <tr>
                    <th colspan="2">Student Information</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Student Name</td>
                    <td><% out.print(studentName); %></td>
                </tr>
                <tr>
                    <td>Student Age</td>
                    <td><% out.print(studentAge); %></td>
                </tr>
                <tr>
                    <td>Student Mobile Number</td>
                    <td><% out.print(studentNumber); %></td>
                </tr>
                <tr>
                    <td>Student Address</td>
                    <td><% out.print(studentAddress); %></td>
                </tr>
                <tr>
                    <td>Student Course</td>
                    <td><% out.print(studentCourse); %></td>
                </tr>
                <tr>
                    <td>Student Qualification</td>
                    <td><% out.print(studentQual); %></td>
                </tr>
            </tbody>
        </table>
    </div>
</body>
</html>