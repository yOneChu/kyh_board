package org.kyh.service;

import java.util.List;

import org.kyh.domain.UserVO;

public interface UserService {

	public List<UserVO> listAll() throws Exception;
	
}
