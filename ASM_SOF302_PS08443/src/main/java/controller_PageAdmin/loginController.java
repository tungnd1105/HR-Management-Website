package controller_PageAdmin;

import javax.servlet.http.HttpSession;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import entity.account;

@Controller
@RequestMapping("/admin/login")
public class loginController {
	
	@RequestMapping()
	public String dangnhap(ModelMap model) {
		model.addAttribute("dangnhap", new account());
		return "views_PageAdmin/login";
	}

	@Autowired
	SessionFactory factory;

	@PostMapping
	@Transactional
	public String login(ModelMap model , @ModelAttribute("dangnhap") account accounts, HttpSession httpSession) {
			
		account acc = factory.getCurrentSession().find(account.class, accounts.getUsername());
		
		if (acc == null)
		{
			model.addAttribute("message", "Tài khoản này không tồn tại!");
			return "views_PageAdmin/login";
		}
		else if (acc.getPassword().equals(accounts.getPassword()) == false)
		{
			model.addAttribute("message", "Mật khẩu không chính xác!");
			return "views_PageAdmin/login";
		}
		else
		{
			httpSession.setAttribute("USER", acc);
			return "views_PageAdmin/homeAdmin";
		}
		
	}
	
}
