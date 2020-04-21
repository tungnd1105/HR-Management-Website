package controller_PageUser;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller

public class User_HomeController {
	@RequestMapping("/home")
	public String home() {
		return "views_PageUser/homeUser";
	}

	@RequestMapping("/lienhe")
	public String lienhe() {
		return "views_PageUser/lienhe";
	}
}
