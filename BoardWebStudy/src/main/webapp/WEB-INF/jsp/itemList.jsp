<%@page import="com.yedam.common.PageDTO"%>
<%--@page import="com.yedam.vo.BoardVO"--%>
<%--@page import="java.util.List"--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> <!-- fmt 태그 라이브러리 추가 -->

</head>
<body></body>
    <h3>아이템목록(itemList.jsp)</h3>
    
    <div class="center">
    	<form action="boardList.do">

    		<div class="row">
    			<div class="col-sm-4"><!-- select 목록. -->
    				<select name="searchCondition" class="form-control">
    					<option value="">선택하세요.</option>
    					<option value="T" ${searchCondition == 'T' ? 'selected' : '' }>제목</option>
    					<option value="W" ${searchCondition eq 'W' ? 'selected' : '' }>작성자</option>
    					<option value="TW" ${searchCondition eq 'TW' ? 'selected' : '' }>제목 & 작성자</option>
    				</select>
    			</div>
    		
    		<div class="col-sm-6">
    			<input type="text" name="keyword" value="${keyword }" class="form-control">    			
    		</div>
    		
    		<div class="col-sm-2">
    			<input type="submit" value="조회" class="btn btn-primary">
    		</div>
    		
    		</div>
    	</form>
    </div>
    
    
	  <div class="album py-5 bg-body-tertiary">
	    <div class="container">
	      <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
					<c:forEach var="board" items="${boardList }">
					
			        <div class="col">
			          <div class="card shadow-sm">
			          
			            <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title>
				  					<a href="board.do?page=${paging.page}&bno=${board.boardNo }" class="text-decoration-none" style="color: black;">
											<c:choose>
												<c:when test="${empty board.image}">
													<rect width="100%" height="100%" fill="#aaa"/>
												</c:when>
												<c:otherwise>
		      								<image xlink:href="images/${board.image}" x="0" y="0" width="100%" height="100%" preserveAspectRatio="xMidYMid slice"/>
												</c:otherwise>
											</c:choose>
										</a>
  									<text x="50%" y="50%" fill="#eceeef" text-anchor="middle" alignment-baseline="middle" dy=".3em">재고 없음</text>
  								</svg>
			           	<div class="card-body">
					  				<a href="board.do?page=${paging.page}&bno=${board.boardNo }" class="text-decoration-none" style="color: black;">
				              <p class="card-text">${board.title }</p>
			              </a>
			              <div class="d-flex justify-content-between align-items-center">
			                <div class="btn-group">
			                  <button type="button" class="btn btn-sm btn-outline-secondary">장바구니</button>
			                  <button type="button" class="btn btn-sm btn-outline-secondary">구매하기</button>
			                </div>
			                <small class="text-body-secondary">${board.writer }</small>
			              </div>
			            </div>
			          </div>
			        </div>
					</c:forEach>
	      </div>
	    </div>
	  </div>    
      
    <!-- <p>${paging }</p> -->
    
    <!-- 페이지부분. -->
    <nav aria-label="Page navigation example">
  	<ul class="pagination justify-content-center">
  
	  <!-- 이전 페이지. -->
	  <c:if test="${paging.prev }">
	    <li class="page-item">
	      <a class="page-link" href="boardList.do?searchCondition=${searchCondition}&keyword=${keyword}&page=${paging.startPage - 1}" aria-label="Previous">
	        <span aria-hidden="true">&laquo;</span>
	      </a>
	    </li>
	  </c:if>
	    
	  <!-- 페이지 갯수 만큼 링크 생성. -->
	  <c:forEach var="p" begin="${paging.startPage }" end="${paging.endPage }">
	  	<c:choose>
				<c:when test="${paging.page == p }">
					<li class="page-item active" aria-current="page">
						<span class="page-link">${p}</span>
					</li>
				</c:when>
				<c:otherwise>
				  <li class="page-item"><a class="page-link" href="boardList.do?page=${p}&searchCondition=${searchCondition}&keyword=${keyword}">${p}</a>
				  </li>
				</c:otherwise>	  
	  	</c:choose>
	  </c:forEach>
	 	
	 	
	  <!-- next 페이지. -->
	  <%--		if(paging.isNext()){ --%>
	  <c:if test="${paging.next}">
		  <li class="page-item">
		    <a class="page-link" href="boardList.do?searchCondition=${searchCondition}&keyword=${keyword}&page=${paging.endPage + 1}" aria-label="Next">
		      <span aria-hidden="true">&raquo;</span>
		    </a>	
		  </li>
	  </c:if>
	  <%-- 		} --%>
	    
	  </ul>
</nav>
  <!-- 페이지 끝. -->  