<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <!-- Bootstrap 3.3.4 -->
     
    <link href="/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="/resources/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">
       <link href="/resources/vendor/bootstrap/css/landing-page.css" rel="stylesheet">
         <script src="/resources/vendor/bootstrap/js/bootstrap.min.js"></script>
       <!-- Font Awesome Icons -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <!-- Ionicons -->
    <link href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" rel="stylesheet" type="text/css" />
    <!-- Theme style -->
 
 

    <!-- AdminLTE Skins. Choose a skin from the css/skins 
         folder instead of downloading all of them to reduce the load. -->
 
 
    <script src="/resources/vendor/jquery/jquery.min.js"></script>
<title>main page</title>




</head>


<body>
<!-- Navigation -->
<div class="wrapper">
    <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
      <div class="container">
        <a class="navbar-brand" href="#">E.M.P</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <a class="nav-link" href="/sboard/list">글쓰기</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/include/memberinfo">내정보</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
    </div>
    

    <!-- Header -->
      
    <header class="intro-header">
    <form action="/include/logout" method="get">
      <div class="container">
        <div class="intro-message">
           <ul><c:out value="${login.MNAME }"/></ul>
              
      <hr class="intro-divider">
          <ul class="list-inline intro-social-buttons">
            <li class="list-inline-item">
              <button type="button" onClick="location.href='/include/checkIn?MID=${login.MID}'"class="btn btn-primary btn-block btn-flat" >출근</button>
            </li>
            <li class="list-inline-item">
              <button type="button" onClick="location.href='/include/checkOut?MID=${login.MID}'"class="btn btn-primary btn-block btn-flat" >퇴근</button>
            </li>
            <li class="list-inline-item">
             <button type="button" onClick="location.href='/include/memberinfo'"class="btn btn-primary btn-block btn-flat">내정보</button>
            </li><li class="list-inline-item">
             <button type="submit" class="btn btn-primary btn-block btn-flat">Logout</button>
            </li>
          </ul>
                <!-- <ul><button type="submit" class="btn btn-primary btn-block btn-flat">Logout</button></ul> -->
             
             
          
          <!-- <h1>Landing Page</h1>
          <h3>A Template by Start Bootstrap</h3>
          <hr class="intro-divider">
          <ul class="list-inline intro-social-buttons">
            <li class="list-inline-item">
              <a href="#" class="btn btn-secondary btn-lg">
                <i class="fa fa-twitter fa-fw"></i>
                <span class="network-name">Twitter</span>
              </a>
            </li>
            <li class="list-inline-item">
              <a href="#" class="btn btn-secondary btn-lg">
                <i class="fa fa-github fa-fw"></i>
                <span class="network-name">Github</span>
              </a>
            </li>
            <li class="list-inline-item">
              <a href="#" class="btn btn-secondary btn-lg">
                <i class="fa fa-linkedin fa-fw"></i>
                <span class="network-name">Linkedin</span>
              </a>
            </li>
          </ul> -->
        </div>
      </div>
      </form>
  
      
    </header>

