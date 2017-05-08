package org.kyh.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/nav/")
public class BoardController {

	private static final Logger logger	=	LoggerFactory.getLogger(BoardController.class);
	
	@RequestMapping(value="/contact")
	public void contact(Model model) {
		logger.info("------ contact ------");
	}
	
}
