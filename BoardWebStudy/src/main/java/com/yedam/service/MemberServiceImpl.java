package com.yedam.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.yedam.common.DataSource;
import com.yedam.mapper.MemberMapper;
import com.yedam.vo.MemberVO;

public class MemberServiceImpl implements MemberService{

	SqlSession sqlSession = DataSource.getInstance().openSession(true); // 자동 커밋.
	MemberMapper mapper = sqlSession.getMapper(MemberMapper.class);
	
	@Override
//	public boolean loginCheck(String id, String pw) {
	public MemberVO loginCheck(String id, String pw) {
//		return mapper.selectMember(id, pw) == 1;
		return mapper.selectMember(id, pw);
	}
	
	@Override
	public List<MemberVO> memberList(String res, String order) {
		return mapper.selectList(res, order);
	}


	@Override
	public boolean removeMember(String mno) {
		return mapper.deleteMember(mno);

	}

	@Override
	public boolean addMember(MemberVO mvo) {
		return mapper.insertMember(mvo);
	}

	@Override
	public boolean modifyMember(MemberVO mvo) {
		return mapper.updateMember(mvo);

	}

	
}
