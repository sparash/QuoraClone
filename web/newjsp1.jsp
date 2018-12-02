<%-- 
    Document   : newjsp1
    Created on : 3-Dec-2018, 12:08:15 AM
    Author     : DELL
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <%Class.forName("com.mysql.jdbc.Driver");
            Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/spas?useSSL=false","root","sparashadmin1234.@");
            String query1="select * from question";
            PreparedStatement pstmt=conn.prepareStatement(query1);
            ResultSet rs=pstmt.executeQuery();
    %>
    <head>
        <style>
/*            
           input
           {
               height: 70px;
               width: 400px;
               color: #006666;
               font-size: 20px;
           }
           button{
               
               border: none;
               background: transparent;
               background-color: #000000;
               color: #00ffcc;
               height: 40px;
               width: 90px;
                font-size: 20px;
           } 
            
            */
            /*
wahooo!!!!!!! It worked!!!
*/

html, body {
	width: 100%;
	height: 100%;
	padding: 0;
	margin: 0;
}
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box}

/* Full-width input fields */
input[type=text], input[type=password] {
    width: 100%;
    padding: 15px;
    margin: 5px 0 22px 0;
    display: inline-block;
    border: none;
    background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
    background-color: #ddd;
    outline: none;
}

hr {
    border: 1px solid #f1f1f1;
    margin-bottom: 25px;
}

/* Set a style for all buttons */
button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
    opacity: 0.9;
}

button:hover {
    opacity:1;
}

/* Extra styles for the cancel button */
.cancelbtn {
    padding: 14px 20px;
    background-color: #f44336;
}

/* Float cancel and signup buttons and add an equal width */
.cancelbtn, .signupbtn {
  float: left;
  width: 50%;
}

/* Add padding to container elements */
.container {
    padding: 16px;
}

/* Clear floats */
.clearfix::after {
    content: "";
    clear: both;
    display: table;
}

@media screen and (max-width: 300px) {
    .cancelbtn, .signupbtn {
       width: 100%;
    }
}
body {
	font-family: 'Press Start 2P', cursive;

	
	background: linear-gradient(top, #ff3232 0%,#fcf528 16%,#28fc28 32%,#28fcf8 50%,#272ef9 66%,#ff28fb 82%,#ff3232 100%);


	background: -moz-linear-gradient(top, #ff3232 0%, #fcf528 16%, #28fc28 32%, #28fcf8 50%, #272ef9 66%, #ff28fb 82%, #ff3232 100%);

	
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#ff3232), color-stop(16%,#fcf528), color-stop(32%,#28fc28), color-stop(50%,#28fcf8), color-stop(66%,#272ef9), color-stop(82%,#ff28fb), color-stop(100%,#ff3232));

	background: -webkit-linear-gradient(top, #ff3232 0%,#fcf528 16%,#28fc28 32%,#28fcf8 50%,#272ef9 66%,#ff28fb 82%,#ff3232 100%);

	background-size: 1000%;
	-moz-background-size: 1000%;
	-webkit-background-size: 1000%;	

	animation-name: fun-time-awesome;
	animation-duration: 40s;
	animation-timing-function: linear;
	animation-iteration-count: infinite;
	animation-direction: alternate;
	animation-play-state: running;

	/* Firefox: */
	-moz-animation-name: fun-time-awesome;
	-moz-animation-duration: 40s;
	-moz-animation-timing-function: linear;
	-moz-animation-iteration-count: infinite;
	-moz-animation-direction: alternate;
	-moz-animation-play-state: running;

	/* Chrome, Safari */
	-webkit-animation-name: fun-time-awesome;
	-webkit-animation-duration: 40s;
	-webkit-animation-timing-function: linear;
	-webkit-animation-iteration-count: infinite;
	-webkit-animation-direction: alternate;
	-webkit-animation-play-state: running;
}

/* W3C */
@keyframes fun-time-awesome {
	0% {background-position: left top;}
	100% {background-position: left bottom;}
}

/* Firefox */
@-moz-keyframes fun-time-awesome {
	0% {background-position: left top;}
	100% {background-position: left bottom;}
}

/* Chrome, Safari */
@-webkit-keyframes fun-time-awesome {
	0% {background-position: left top;}
	100% {background-position: left bottom;}
}


h1 {
	position: absolute;
	top: 10px;
	left: 10px;
	z-index: 50;
	font-size: 40px;
}
h2 {
	position: absolute;
	top: 70px;
	left: 10px;
	z-index: 50;
	font-size: 20px;
}
h2 span {
	font-size: 10px;
}
h1, h2 {
	color: #fff;
	text-shadow: 0px 1px 0px #999, 0px 2px 0px #888, 0px 3px 0px #777, 0px 4px 0px #666, 0px 5px 0px #555, 0px 6px 0px #444, 0px 7px 0px #333, 0px 8px 7px #001135;
}
div {
	position: relative;
	z-index: 20;
}
#crushin {
	position: absolute;
	bottom: 10px;
	left: 10px;
	z-index: 50;
}
audio {
	position: absolute;
	bottom: 10px;
	right: 10px;
	z-index: 50;
	opacity: 0;
}
#counter {
	position: absolute;
	bottom: 10px;
	width: 100%;
	text-align: center;
	z-index: 50;
}
.face-source {
	display: none;
}
#faces-container {
	height: 100%;
}


/* mobile phone */
@media screen and (max-device-width: 480px) {
	body {
		height: 120%;
	}
	h1 {
		font-size: 25px;
	}
	h2 {
		font-size: 12px;
		top: 50px;
	}
	audio {
		opacity: 1;
		bottom: 30px;
		top: 90px;
		left: 10px;
	}
	#crushin {
		display: none;
	}
	#counter {
		top: 380px;
	}
}
            
            </style>
        <title>TO DO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
<div class="container">
<!--     <h1>Add Question</h1> -->
    <p>Answer of question recently stored</p>
    <hr>
    <form action="AnswerServlet" method="POST">
        <select name="q_id">
            <% while(rs.next())
        {%>
        <option value="<%=rs.getString(1)%>"><%=rs.getString(2)%></option>
            <%}%>
        </select><br>
    <label for="name"><b>Answer</b></label>
    <input type="text" placeholder="Add Answer" name="Answer" required>

   

    <div class="clearfix">
     
      <button type="submit" class="signupbtn">Submit Question</button>
    </div>
    </form>
  </div>
    </body>
</html>
