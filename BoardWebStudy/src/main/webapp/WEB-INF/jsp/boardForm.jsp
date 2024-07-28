<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<h3>등록화면(boardForm.jsp)</h3>

<form action="addBoard.do" method="post" enctype="multipart/form-data"> <!--  get: 방식 파일 업로드 용량 한계 -->
	<table class="table">
		<tr>
			<th>제목</th>
			<td><input class="form-control" type="text" name="title"></td>
		</tr>
		<tr>
			<th>내용</th>
			<td><textarea class="form-control" name="content"></textarea></td>
		</tr>
		<tr>
			<th>작성자</th>
			<td><input class="form-control" readonly type="text" name="writer" value="${logid }"></td>
		</tr>
		<tr>
			<th>파일</th>
			<td><input class="form-control" type="file" name="image" ></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
			<input class="btn btn-primary" type="submit"> 
			
			<button class="btn btn-warning" type="reset"> 수정 </button>
			</td>
		</tr>
	</table>
</form>
