package org.kyh.persistence;

import java.util.List;

import org.kyh.domain.UserVO;

public interface UserDAO {
	
	public List<UserVO> allList() throws Exception;
	

}
