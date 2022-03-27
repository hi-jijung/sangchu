package xyz.itwill.mapper;

import java.util.List;

import xyz.itwill.dto.Member;

public interface MemberMapper {
	int insertMember(Member member);
	int updateMember(Member member);
	int deleteMember(String id);
	List<Member> selectMemberList();
	int mypagePaypwUpdate(Member member);
	int mypageAddAccount(Member member);
}