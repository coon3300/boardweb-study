<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
                <!-- Top navigation-->
<nav class="navbar navbar-expand-lg bg-body-tertiary">
	<div class="container">
	    <a class="navbar-brand" href="boardList.do">Navbar</a>
	    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
	      <span class="navbar-toggler-icon"></span>
	    </button>
	    <div class="collapse navbar-collapse" id="navbarSupportedContent">
	      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
	        <c:choose>
	        	<c:when test="${empty logid }">
	        		<li class="nav-item">
		          	<a class="nav-link" href="loginForm.do">로그인</a>
	        		</li>
	        	</c:when>
	        	<c:otherwise>
	        		<li class="nav-item">
		          	<a class="nav-link" href="logout.do">로그아웃</a>
	        		</li>
			        <li class="nav-item">
			          <a class="nav-link active" aria-current="page" href="boardForm.do">글 등록</a>
			        </li>
	        	</c:otherwise>
	        </c:choose>        
	        <li class="nav-item dropdown">
	          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
	            Dropdown
	          </a>
	          <ul class="dropdown-menu">
	            <li><a class="dropdown-item" href="#">Action</a></li>
	            <li><a class="dropdown-item" href="#">Another action</a></li>
	            <li><hr class="dropdown-divider"></li>
	            <li><a class="dropdown-item" href="#">Something else here</a></li>
	          </ul>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link disabled" aria-disabled="true">Disabled</a>
	        </li>
	      </ul>
	      <form class="d-flex" role="search">
	        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
	        <button class="btn btn-outline-success" type="submit">Search</button>
	      </form>
	    </div>
  </div>
</nav>