package com.yedam.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.yedam.common.Control;
import com.yedam.service.BoardService;
import com.yedam.service.BoardServiceImpl;
import com.yedam.vo.BoardVO;

public class AddBoardControl implements Control{

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// key-value 처리위한 application/x-www-form-rulencode 방식
		String writer = req.getParameter("writer");
		String content = req.getParameter("content");
		String title = req.getParameter("title");
		
		// 파일전송 multipart/form-data 방식. cos라이브러리.
		// 1.파일업르도 (image) 2.DB입력.
		String savePath = req.getServletContext().getRealPath("images");
		int maxSize = 1024 * 1024 * 5; // 5MB 
		MultipartRequest request = new MultipartRequest(req // 1.요청정보.
				, savePath // 2.업로드 경로.
				, maxSize // 3.최대 크기 지정.
				, "UTF-8" // 4.파일명 해석 인코딩방식지정.
				, new DefaultFileRenamePolicy() // 5.리네임정책.
		);
		writer = request.getParameter("writer");
		content = request.getParameter("content");
		title = request.getParameter("title");
		String image = request.getFilesystemName("image"); // boardForm.jsp 메소드 값과 일치
		
		
		BoardService svc = new BoardServiceImpl();
		BoardVO bvo = new BoardVO();
		
		bvo.setWriter(writer);
		bvo.setContent(content);
		bvo.setTitle(title);
		bvo.setImage(image);
		
//		req.getRequestDispatcher("WEB-INF/jsp/boardList.jsp") //
//		.forward(req, resp); // 페이지 재지정
//		
		if(svc.addBoard(bvo)) {
			// 목록이동.
			resp.sendRedirect("boardList.do");
		}
		
//		req.getRequestDispatcher("WEB-INF/jsp/boardForm.jsp").forward(req, resp);
	}
	
}