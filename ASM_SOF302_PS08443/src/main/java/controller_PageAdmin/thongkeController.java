package controller_PageAdmin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import dao.NhanvienDAO;
import dao.thongkeDAO;
import entity.staff;

@Controller
@RequestMapping("/admin/")
public class thongkeController {
	@Autowired
	thongkeDAO tkdao;

	@RequestMapping(value = "thongkenhanvien")
	public String thongkenv(ModelMap model) {
		List<Object[]> list = tkdao.tknhanvien();
		model.addAttribute("thongke", list);
		return "views_PageAdmin/thanhtich_nhanvien";
	}
	@Autowired NhanvienDAO nvdao;
	@PostMapping(value = "search")
	public String search(@RequestParam("search") String name, ModelMap model) {
		model.addAttribute("nhanvien", new staff());
		model.addAttribute("staff", nvdao.search(name));
		return "views_PageAdmin/thanhtich_nhanvien";
	}
	@RequestMapping(value = "thongkephongban")
	public String thongkepb(ModelMap model) {
		List<Object[]> list = tkdao.tkphongban();
		model.addAttribute("thongke", list);
		return "views_PageAdmin/thanhtich_phongban";
	}
}
