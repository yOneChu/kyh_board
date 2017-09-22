package org.kyh.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.kyh.domain.UserVO;
import org.springframework.stereotype.Repository;

@Repository
public class UserDAOImpl implements UserDAO {

	
	@Inject
	private SqlSession sqlSession;
	
	private static String namespace	=	"org.kyh.mappers.userMapper";
	
	
	@Override
	public List<UserVO> allList() throws Exception {
		return sqlSession.selectList(namespace + ".allList");
	}
	
	
	
}
