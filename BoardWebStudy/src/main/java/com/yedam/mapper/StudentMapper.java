package com.yedam.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.yedam.vo.MemberVO;
import com.yedam.vo.StudentVO;

public interface StudentMapper {
	List<StudentVO> studentList();
	StudentVO selectOne(String sno);
	int insertStudent(StudentVO svo);
	int deleteStudent(String stdNo);
	// 로그인 체크.
	// mapper.xml에 2개 이상 매개변수로 전달할 때 @Param 사용
	// 클래스 필드 2개 이상 포함하는 객체를 전달할 경우는 매개변수로 객체 1개 전달
}
