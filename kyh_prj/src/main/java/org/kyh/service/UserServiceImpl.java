package org.kyh.service;

import java.util.List;

import javax.inject.Inject;

import org.kyh.domain.UserVO;
import org.kyh.persistence.UserDAO;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

	@Inject
	private UserDAO userDao;
	
	@Override
	public List<UserVO> listAll() throws Exception {
		return userDao.allList();
	}

	
	
}
