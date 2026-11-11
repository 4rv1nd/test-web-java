<%-- 
    Document   : newjsp
    Created on : Nov 4, 2020, 8:59:43 AM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
   <style>
            *{
                color:white;
            }
            body{
                padding: 0px;
                margin: 0px;
                background-Image:url("images/bb.jpg");
                background-size:cover;
                background-attachment:fixed;
                   
            }
            
            #img{
                /*height:10%;*/
                width:15%;
                transition:.3s;
                
            }
            #nav{
                
                font-size: 40px;
                width:15%;
                position:fixed;
            }
            #nav:hover #img{
                transform: rotate(-90deg);
                transition:.3s;
                cursor: pointer;
            }
            #nav:hover{
                cursor: pointer;
            }
            ul{
               margin: 0px;
               padding: 0px;
               overflow: hidden;
               width:0px;
               height:0px;
               text-decoration:none;
               transition:width 0.5s,height 0.5s;
            }
            ul li{
                
                padding: 20px;
                font-size: 22px;
                background-color: green;
            }
            #nav:hover ul{
               width: 100%;
               height: 100%;
            }
            a{
                text-decoration: underline black;
                transition: .5s;
            }
            a:hover {
                text-decoration: underline white;
                color:black; 
            }
            #front{
                //border:3px solid black;
                margin-left:16%;
                
            }
            #front img{
                display: inline-block;
                width:45%;
                padding: 20px;
            }
            h1::before{
                
                content: "We will Show you";
                background-color: orange;
                display: block;
/*                align-items: center;
                justify-content: center;*/
            }
            h1::after{

                display: block;
                content: "Traditional Uttrarakhand";
                background-color: green;
            }
            h1{
               padding: 0px;
               margin-top:10px;
               background-color: white;
               font-size: 25px;
               display: block;
               color: black;
               text-decoration: underline yellow;
               //width:90%;
               opacity: .7;
            }
            h1:hover{
                color:blue;
                text-decoration: underline black;
            }
            
            #con{
                margin-left: 40%;
                width:inherit;
            }
            video{
                width: 50%;
                
            }
            #footer{
                background-color:rgb(255, 255, 255,.5);
                //margin-top:31%;
                /*padding: .5px;*/
            }
            
            #footer h2{
                font-size: 30px;
                text-align: center;
                color: black;
            }
            #footer #im{
                overflow: hidden;
                /*background-color:rgb(255, 255, 255,.5);*/
                
                color:black;
                display: flex;
                justify-content: center;
                align-items:center;
            }
           
            #im a{
                //border: 2px solid black;
                width:5%;
                height:10%;
                text-decoration: none;
                color:rgb(255, 255, 255,.1);
                display: flex;
                align-items: center;
                font-size: 20px;
                overflow: hidden;
                transition: .5s;
            }
            #g:hover{
                color: black;
                width:22%;
                cursor: pointer;
               
            }
            #w:hover{
                color: black;
                width:15%;
                cursor: pointer;
               
            }
            #i:hover{
                color: black;
                width:25%;
                cursor: pointer;
                
            }
            #f:hover{
                color: black;
                width:25%;
                cursor: pointer;
                
            }
            #footer h2{
                margin:0px;
            }
            #footer h5{
                color:black;
                width:15%; 
                margin:0px;
                //padding: 2px;
                display: block;
                margin-left: 43%;
                font-size: 15px;
            }
            #footer h5::before{
                color:black;
                display: block;
                font-size: 15px;
                content: "Terms of use Privacy Policy";
            }
            #footer h5::after{
                color:black;
                font-size: 15px;
                content: " ©2020";
            }
        </style>
    </head>
    
    <body>
    <center>
        <h1>The</h1>
    </center>
        <div id="nav">
             Menue <img id="img" alt="Menue icon" src="images/menuee.png" />
        <ul>
            <li><a href="gallary.html">Gallary</a></li>
            <li><a href="">Contact</a></li>
            <li><a href="">Food</a></li>
            <li><a href="">Booking</a></li>
            <li><a href="">Service</a></li>
            <li><a href="">Information</a></li>
        </ul>
        </div>
        <div id="front">
            
        </div>
<!--        <form action="login" method="post">  
            Enter your name<input type="text" name="u"><br>  
            Enter your no.<input type="number" name="p"><br>  
            <input type="submit" value="login">  
        </form>  -->

<div id="con" >
    <video controls>
        <source src="VID-20201101-WA0002.mp4" type="video/mp4">
    </video>
</div>
    <div id="footer">
        <h2>For More Information</h2>
        <div id="im">
                <a href="mailto: sumitrawat9978@gmail.com" id="g" target="_blank">
                    <img alt="gmail icon" src="images/gmail.png" />sumitrawat9978@gmail.com
                </a>
            &emsp;
                <a href="https://www.facebook.com/mountainmonkeysuttrakhand/" id="f" target="_blank">
                    <img alt="facebook icon" src="images/facebook.png" />mountainmonkeysuttrakhand
                </a>
            &emsp;
                <a href="https://www.instagram.com/mountainmonkeysuttrakhand/" id="i" target="_blank">
                    <img alt="instagram icon" src="images/instagram.png" />mountainmonkeysuttrakhand
                </a>
            &emsp;
                <a href="tel:9818134539"  id="w" target="_blank">
                    <img alt="whatsapp icon" src="images/whatsapp.png" />9818134539
                </a>
            &emsp;
        </div>
        <h5>Company name</h5>
    </div>
    </body>
    
</html>

