package org.kyh.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.kyh.domain.UserVO;
import org.kyh.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/user/*")
public class UserController {

	private static final Logger logger	=	LoggerFactory.getLogger(UserController.class);
	
	@Inject
	UserService userService;
	
	
	@RequestMapping(value="/list")
	public void list() throws Exception {
		logger.info("------ list -------");
		
	}
	
	@RequestMapping(value="/regist")
	public String regist(HttpServletRequest req, HttpServletResponse res, UserVO vo, RedirectAttributes rttr) throws Exception {
		System.out.println(vo);
		
		rttr.addFlashAttribute("msg", "SUCCESS");
		return "redirect:/";
	}
	
}
