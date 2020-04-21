package controller_PageUser;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import dao.thongkeDAO;
@Controller
@RequestMapping("/home/topnhanvien")
public class topnhanvienController {
	@Autowired thongkeDAO tkdao;
	@RequestMapping()
	public String topnhanvien(ModelMap model) {
		List<Object[]> list = tkdao.top10nhanvien();
		model.addAttribute("thongke", list);
		return "views_PageUser/topnhanvien";
	}
}
