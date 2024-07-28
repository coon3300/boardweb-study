<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 요기는 html/index.jsp -->
<h3>연습합니다...</h3>

<div id="show">
<div>
	<table class="table">
		<tr>
			<th>이름</th><td><input type="text" class="form-control" id="fname"></td>
		</tr>
		<tr>
			<th>주소</th><td><input type="text" class="form-control" id="faddress"></td>
		</tr>
		<tr>
			<th>키</th><td><input type="number" class="form-control" id="fheight"></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<button id="addBtn" class="btn btn-primary">등록</button>
				<button id="modBtn" class="btn btn-warning">수정</button>
				<button id="delBtn" class="btn btn-danger">선택 삭제</button>
			</td>
		</tr>
	</table>
</div>

	<table class="table">
		<thead>
			<tr>
				<th>친구이름</th><th>주소</th><th>키</th><th>삭제</th><th><input type="checkbox"></th>
			</tr>
		</thead>
		
		<tbody id="list">
		</tbody>
	</table>
</div>

<script src="js/array1.js"></script>
