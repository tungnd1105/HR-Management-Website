package controller_PageAdmin;

import java.io.File;
import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import dao.NhanvienDAO;
import dao.PhongBanDAO;
import entity.depart;
import entity.staff;

@Controller
@RequestMapping("/admin/nhanvien")
public class nhanvienController {
	@RequestMapping()
	public String menuNhanvien(ModelMap model) {
		model.addAttribute("nhanvien", new staff());
		model.addAttribute("image" );
		model.addAttribute("staff", nvdao.findAll());
		return "views_PageAdmin/nhanvien";
	}

//updload anh
	@Autowired
	ServletContext context;

// insert nhan viên
	@Autowired
	NhanvienDAO nvdao;

	@RequestMapping(params = "btnInsert", method = RequestMethod.POST)
	public String insert(ModelMap model, @RequestParam("image") MultipartFile image,
			@ModelAttribute("nhanvien") staff nv) {
		System.out.println(image.getOriginalFilename());
		if (image.isEmpty()) {
			model.addAttribute("message", "hình đại diện chưa được chọn");
			return "views_PageAdmin/nhanvien";
		} else {
			try {
				String path = context.getRealPath("/resources/images/") + image.getOriginalFilename();
				System.out.print(path);
				image.transferTo(new File(path));
				nv.setAvatar(image.getOriginalFilename());
			} catch (Exception e) {
				model.addAttribute("message", "up hình thất bại");
				return "views_PageAdmin/nhanvien";
			}
		}

		try {

			nvdao.insert(nv);
			model.addAttribute("message", " thêm nhân viên thành công!");
		
		} catch (Exception e) {
			model.addAttribute("message", " thêm nhân viên thất bại! vui lòng kiểm tra lại");
		}
		model.addAttribute("staff", nvdao.findAll());
		return "views_PageAdmin/nhanvien";
	}

//	//update
	@RequestMapping(params = "btnUpdate", method = RequestMethod.POST)
	public String update(ModelMap model, @RequestParam("image") MultipartFile image,
			@ModelAttribute("nhanvien") staff nv) {
		if (!image.isEmpty()) {
			try {
				String path = context.getRealPath("/resources/images/") + image.getOriginalFilename();
				image.transferTo(new File(path));
				nv.setAvatar(image.getOriginalFilename());
			} catch (Exception e) {
				model.addAttribute("message", "up hình thất bại");
				return "views_PageAdmin/nhanvien";
			}
		}

		try {

			nvdao.update(nv);
			model.addAttribute("message", " cập nhật nhân viên thành công!");
		} catch (Exception e) {
			model.addAttribute("message", " cập nhật nhân viên thất bại! vui lòng kiểm tra lại");
		}
		model.addAttribute("staff", nvdao.findAll());
		model.addAttribute("image", nv.getAvatar());
		return "views_PageAdmin/nhanvien";
	}

//delete nhan vien
	@RequestMapping(params = "btnDelete", method = RequestMethod.POST)
	public String delete(ModelMap model, @ModelAttribute("nhanvien") staff nv) {
		try {
			nvdao.delete(nv);
			model.addAttribute("message", " xóa nhân viên thành công!");
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("message", " xóa nhân viên thất bại! vui lòng kiểm tra lại");
		}
		model.addAttribute("staff", nvdao.findAll());
		return "views_PageAdmin/nhanvien";
	}
	@RequestMapping(value= "Delete", method = RequestMethod.GET)
	public String deletenv(ModelMap model, @ModelAttribute("nhanvien") staff nv) {
		try {
			nvdao.delete(nv);
			model.addAttribute("message", " xóa nhân viên thành công!");
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("message", " xóa nhân viên thất bại! vui lòng kiểm tra lại");
		}
		model.addAttribute("staff", nvdao.findAll());
		return "views_PageAdmin/nhanvien";
	}
	// find dpart
	@Autowired
	PhongBanDAO pdao;

	@ModelAttribute("departs")
	public List<depart> getMajors() {
		return pdao.findAll();
	}

	@PostMapping(params = "btnSearch")
	public String search(@RequestParam("search") String name, ModelMap model) {
		model.addAttribute("nhanvien", new staff());
		model.addAttribute("staff", nvdao.search(name));
		return "views_PageAdmin/nhanvien";
	}
}