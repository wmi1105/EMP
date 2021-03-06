package org.zerock.persistence;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import org.zerock.domain.CheckVO;
import org.zerock.domain.MemberVO;
import org.zerock.dto.LoginDTO;

@Repository
public class MemberDAOImpl implements MemberDAO {

	@Inject
	private SqlSession session;
	
	private static String namespace="org.zerock.mapper.MemberMapper";
	
	@Override
	public MemberVO login(LoginDTO dto) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".login",dto);
	}

	@Override
	public void keepLogin(Integer MID, String sessionId, Date next) {
		// TODO Auto-generated method stub
		 Map<String, Object> paramMap = new HashMap<String, Object>();
		    paramMap.put("MID", MID);
		    paramMap.put("sessionId", sessionId);
		    paramMap.put("next", next);
		    
		    session.update(namespace+".keepLogin", paramMap);
		    
		
	}
	

	@Override
	public MemberVO checkMemberWithSessionKey(String value) {
		// TODO Auto-generated method stub
		return session.selectOne(namespace +".checkUserWithSessionKey", value);
	}

	@Override
	public void create(MemberVO vo) throws Exception {
		// TODO Auto-generated method stub
		session.insert(namespace + ".create", vo);
	}

	@Override
	public MemberVO giveId(MemberVO vo) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".giveID", vo);
	}
	
	
	@Override
	public CheckVO checkIn(int MID) throws Exception {
		// TODO Auto-generated method stub
		  session.insert(namespace + ".checkIn", MID);
	      return session.selectOne(namespace + ".checkInTime", MID);
	   }
    //출퇴근
	@Override
	public CheckVO checkOut(int MID) throws Exception {
		// TODO Auto-generated method stub
		session.update(namespace + ".checkOut", MID);
	      return session.selectOne(namespace + ".checkOutTime", MID);
	   }

	@Override
	public List<CheckVO> checkInfo(int MID) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".checkinfo", MID);
	}

	@Override
	public List<MemberVO> listAll() throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace + ".listAll");
	}




	
}
