package dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.ModelAttribute;

import entity.depart;
import entity.record;
import entity.staff;

@Repository
public class danhgiaDAO {
	@Autowired
	SessionFactory factory;// gọi sessionFactory
	// void insert

	public boolean insert(record danhgia) {
		Session session = factory.openSession();
		Transaction transaction = session.beginTransaction();
		boolean success;
		try {
			session.save(danhgia);
			transaction.commit();
			success = true;
		} catch (Exception e) {
			e.printStackTrace();
			transaction.rollback();
			success = false;
		} finally {
			session.close();
		}
		return success;
	}

//void update 
	public boolean update(record danhgia) {
		Session session = factory.openSession();
		Transaction transaction = session.beginTransaction();
		boolean success;
		try {
			session.update(danhgia);
			transaction.commit();
			success = true;
		} catch (Exception e) {
			e.printStackTrace();
			transaction.rollback();
			success = false;
		} finally {
			session.close();
		}
		return success;
	}

	// void delete
	public boolean delete(record danhgia) {
		Session session = factory.openSession();
		Transaction transaction = session.beginTransaction();
		boolean success;
		try {
			session.delete(danhgia);
			transaction.commit();
			success = true;
		} catch (Exception e) {
			e.printStackTrace();
			transaction.rollback();
			success = false;
		} finally {
			session.close();
		}
		return success;
	}

	// void fill data table
	// đổ dữ liệu ra table
	@Transactional
	public List<record> findAll() {
		Session session = factory.openSession();
		String hql = " From record";
		Query query = session.createQuery(hql);
		List<record> list = query.list();
		return list;
	}
	@Transactional
	public List<record> search(String staffid) {
		Session session = factory.openSession();
		String hql = "from record where staffid like :staffid";
		Query query = session.createQuery(hql);
		query.setParameter("staffid", "%" + staffid + "%");
		@SuppressWarnings("uncheked")
		List<record> list = query.list();
		return list;

	}

}
