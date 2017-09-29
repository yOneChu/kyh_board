package org.kyh.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.kopitubruk.util.json.JSONUtil;
import org.kyh.domain.UserVO;
import org.kyh.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/user/*")
public class UserController {

	private static final Logger logger	=	LoggerFactory.getLogger(UserController.class);
	
	@Inject
	UserService userService;
	
	
	@RequestMapping(value="/list")
	public String list(HttpServletRequest request, Model model) throws Exception {
		logger.info("------ list -------");

		List<UserVO> userList = null;
		
		try {
			//userList = userService.listAll();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		//model.addAttribute("list", userList);
		//model.addAttribute("jsonResult", userList);
		logger.info("---------- list end -----------");
		//return "/user/selectUserListView";
		return "/user/UserList_datatable";
	}
	
	
	
	@RequestMapping(value="/listView")
	public String userList(HttpServletRequest request, Model model) throws Exception {
		//logger.info("------------ userList -------------");
		
		List<UserVO> userList = null;
		
		try {
			userList = userService.listAll();  
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		//logger.info("jsonArray ------> " + jsonArray);
		request.setAttribute("userList", userList);
		model.addAttribute("resultList", userList);
		
		return "/user/listView_json";
	}
	
	
	@RequestMapping(value="/regist")
	public String regist(HttpServletRequest req, HttpServletResponse res, UserVO vo, RedirectAttributes rttr) throws Exception {
		System.out.println(vo);
		
		rttr.addFlashAttribute("msg", "SUCCESS");
		return "redirect:/";
	}
	
}
