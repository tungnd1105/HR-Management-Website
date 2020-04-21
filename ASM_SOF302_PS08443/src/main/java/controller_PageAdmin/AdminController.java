package controller_PageAdmin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;

import org.springframework.web.bind.annotation.RequestMapping;


import entity.staff;


@Controller
@RequestMapping("/admin")
public class AdminController {

	@RequestMapping("/home")
	public String home() {
		return "views_PageAdmin/homeAdmin";
	}



	@RequestMapping("/menu_doimatkhau")
	public String doimatkhau() {
		return "view_PageAdmin/doimatkhau";
	}
}
