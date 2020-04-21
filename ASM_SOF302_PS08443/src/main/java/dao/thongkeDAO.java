package dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


@Repository
public class thongkeDAO {
	// gọi procedure thống kê thành tích và kỷ luật của nhân viên
	@Autowired
	SessionFactory factory;
	@Transactional
	public List<Object[]> tknhanvien() {
		Session session = factory.openSession();
		String hql = "Exec sp_ttnhanvien :fullName";
		Query query = session.createSQLQuery(hql).setParameter("fullName", "");
		@SuppressWarnings("uncheked")
		List<Object[]> list = query.list();
		return list;

	}
	//goi procedure thống kê phòng ban
	@Transactional
	public List<Object[]> tkphongban() {
		Session session = factory.openSession();
		String hql = "Exec sp_ttphongban";
		Query query = session.createSQLQuery(hql);
		@SuppressWarnings("uncheked")
		List<Object[]> list = query.list();
		return list;
	}
	//goi procedure hien thi 10 nhan vien xuất sắc
	@Transactional
	public List<Object[]> top10nhanvien() {
		Session session = factory.openSession();
		String hql = "Exec sp_top10 ";
		Query query = session.createSQLQuery(hql);
		@SuppressWarnings("uncheked")
		List<Object[]> list = query.list();
		return list;
	}
}
