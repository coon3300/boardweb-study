package com.yedam.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.yedam.vo.MemberVO;

public interface MemberMapper {
	MemberVO selectMember(@Param("id") String id, @Param("pw") String pw);
	List<MemberVO> selectList(@Param("res") String res, @Param("orderBy") String orderBy); 
	boolean deleteMember(String mid);
	boolean insertMember(MemberVO mvo);
	boolean updateMember(MemberVO mvo);
}
