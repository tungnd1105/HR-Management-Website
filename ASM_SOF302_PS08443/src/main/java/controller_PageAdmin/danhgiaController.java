package controller_PageAdmin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import dao.NhanvienDAO;
import dao.danhgiaDAO;
import entity.record;
import entity.staff;

@Controller
@RequestMapping("/admin/danhgia")
public class danhgiaController {
	@RequestMapping()
	public String menu_thanhtichvakyluat(ModelMap model) {
		model.addAttribute("danhgia", new record());
		model.addAttribute("danhgias", dgDAO.findAll());
		return "views_PageAdmin/thanhtich_kyluat";
	}

	@Autowired
	danhgiaDAO dgDAO; // gọi lớp ghi nhan phongbanDao
	// tạo đánh giá nv

	@RequestMapping(params = "btnInsert", method = RequestMethod.POST)
	public String insert(ModelMap model, @ModelAttribute("danhgia") record danhgia) {
		try {
			dgDAO.insert(danhgia);
			model.addAttribute("message", "đánh giá nhân viên thành công! ");
		} catch (Exception e) {
			model.addAttribute("message", "đánh giá nhân viên thất bại! vui lòng kiểm tra lại ");
		}
		model.addAttribute("danhgia", danhgia);
		model.addAttribute("danhgias", dgDAO.findAll());
		return "views_PageAdmin/thanhtich_kyluat";
	}
	// void cập nhật đánh giá
	@RequestMapping(params = "btnUpdate", method = RequestMethod.POST)
	public String update(ModelMap model, @ModelAttribute("danhgia") record danhgia) {
		try {
			dgDAO.update(danhgia);
			model.addAttribute("message", "cập nhật đánh giá nhân viên thành công! ");
		} catch (Exception e) {
			model.addAttribute("message", "cập nhật đánh giá thất bại! vui lòng kiểm tra lại ");
		}
		model.addAttribute("danhgia", danhgia);
		model.addAttribute("danhgias", dgDAO.findAll());
		return "views_PageAdmin/thanhtich_kyluat";
	}
	// void xóa đánh giá
	@RequestMapping(params = "btnDelete", method = RequestMethod.POST)
	public String delete(ModelMap model, @ModelAttribute("danhgia") record danhgia) {
		try {
			dgDAO.delete(danhgia);
			model.addAttribute("message", "xóa đánh giá nhân viên thành công! ");
		} catch (Exception e) {
			model.addAttribute("message", " xóa đánh giá thất bại! vui lòng kiểm tra lại ");
		}
		model.addAttribute("danhgia", danhgia);
		model.addAttribute("danhgias", dgDAO.findAll());
		return "views_PageAdmin/thanhtich_kyluat";
	}
	@RequestMapping(value= "Delete", method = RequestMethod.GET)
	public String Delete(ModelMap model, @ModelAttribute("danhgia") record danhgia) {
		try {
			dgDAO.delete(danhgia);
			model.addAttribute("message", "xóa đánh giá nhân viên thành công! ");
		} catch (Exception e) {
			model.addAttribute("message", " xóa đánh giá thất bại! vui lòng kiểm tra lại ");
		}
		model.addAttribute("danhgia", danhgia);
		model.addAttribute("danhgias", dgDAO.findAll());
		return "views_PageAdmin/thanhtich_kyluat";
	}
	// find staff
	@Autowired
	NhanvienDAO nvdao;
	@ModelAttribute("staffs")
	public List<staff> getnv() {
		return nvdao.findAll();
	}
	
	
	@PostMapping(params = "btnSearch")
	public String search(@RequestParam("search") String name, ModelMap model) {
		model.addAttribute("danhgia", new record());
		model.addAttribute("danhgias", dgDAO.search(name));
		return "views_PageAdmin/thanhtich_kyluat";
	}
}
