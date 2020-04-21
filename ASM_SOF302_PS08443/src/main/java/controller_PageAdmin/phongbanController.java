package controller_PageAdmin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import dao.PhongBanDAO;
import entity.depart;

@Controller
@RequestMapping("/admin/phongban")
public class phongbanController {

	@Autowired
	PhongBanDAO pbDAO; // gọi lớp phòng ban phongbanDao

	@RequestMapping()
	public String menu_phongban(ModelMap model) {
		model.addAttribute("phongban", new depart());
		model.addAttribute("departs", pbDAO.findAll());
		return "views_PageAdmin/phongban";
	}

// tạo phòng ban
	@RequestMapping(params = "btnInsert", method = RequestMethod.POST)
	public String insertPhongban(ModelMap model, @ModelAttribute("phongban") depart phongban) {
		try {
			pbDAO.insert(phongban);
			model.addAttribute("message", "tạo phòng ban thành công ! ");
		} catch (Exception e) {
			model.addAttribute("message", "tạo phòng ban thất bại! vui lòng kiểm tra lại ");
		}
		model.addAttribute("phongban", phongban);
		model.addAttribute("departs", pbDAO.findAll());
		return "views_PageAdmin/phongban";
	}

// update phong ban 
	@RequestMapping(params = "bntUpdate", method = RequestMethod.POST)
	public String updatephongban(ModelMap model, @ModelAttribute("phongban") depart phongban) {
		try {
			pbDAO.update(phongban);
			model.addAttribute("message", "cập nhật phòng ban thành công!");
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("message", "cập nhật phòng ban thất bại");
		}
		model.addAttribute("departs", pbDAO.findAll());
		return "views_PageAdmin/phongban";
	}

	// delete phongban
	@RequestMapping(params = "btnDelete", method = RequestMethod.POST)
	public String deletephongban(ModelMap model, @ModelAttribute("phongban") depart phongban) {
		try {
			pbDAO.delete(phongban);
			model.addAttribute("message", "xóa phòng ban thành công!");
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("message", "xóa phòng ban thất bại! vui lòng kiểm tra lại");
		}
		model.addAttribute("departs", pbDAO.findAll());
		return "views_PageAdmin/phongban";
	}
	@RequestMapping(value = "Delete", method = RequestMethod.GET)
	public String delete(ModelMap model, @ModelAttribute("phongban") depart phongban) {
		try {
			pbDAO.delete(phongban);
			model.addAttribute("message", "xóa phòng ban thành công!");
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("message", "xóa phòng ban thất bại! vui lòng kiểm tra lại");
		}
		model.addAttribute("departs", pbDAO.findAll());
		return "views_PageAdmin/phongban";
	}
// search  phongban
	@PostMapping(params = "btnSearch")
	public String search(@RequestParam("search") String name, ModelMap model) {
		model.addAttribute("phongban", new depart());
		model.addAttribute("departs", pbDAO.search(name));
		return "views_PageAdmin/phongban";
	}
}
