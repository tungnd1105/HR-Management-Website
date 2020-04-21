package controller_PageAdmin;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import entity.account;

@Controller
@RequestMapping("admin/logout")
public class logoutController {

	@RequestMapping()
	public String logout(ModelMap model, HttpSession httpSession ) {
		httpSession.removeAttribute("USER");
		model.addAttribute("dangnhap", new account());
		return "views_PageAdmin/login";
	}
}
