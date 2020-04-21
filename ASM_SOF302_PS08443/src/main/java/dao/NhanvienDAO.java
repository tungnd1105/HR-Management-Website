	package dao;

import java.util.List;

import org.hibernate.Session;

import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import entity.depart;
import entity.staff;

@Repository
public class NhanvienDAO {
	@Autowired
	SessionFactory factory;// gọi sessionFactory
	// void insert

	public boolean insert(staff nv) {
		Session session = factory.openSession();
		Transaction transaction = session.beginTransaction();
		boolean success;
		try {
			session.save(nv);
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

	public boolean update(staff nv) {
		Session session = factory.openSession();
		Transaction transaction = session.beginTransaction();
		boolean success;
		try {
			session.update(nv);
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

	// delete nv
	public boolean delete(staff nv) {
		Session session = factory.openSession();
		Transaction transaction = session.beginTransaction();
		boolean success;
		try {
			session.delete(nv);	
			String hql = "delete from record where staffid =: manv";
			Query query = session.createQuery(hql);
			query.setParameter("manv" , nv.getId());
			
			transaction.commit();
			System.out.println(1);
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
	@Transactional
	public List<staff> findAll() {
		Session session = factory.openSession();
		String hql = " From staff";
		Query query = session.createQuery(hql);
		List<staff> list = query.list();
		return list;
	}

	@Transactional
	public List<staff> search(String name) {
		Session session = factory.openSession();
		String hql = "from staff where name like :name";
		Query query = session.createQuery(hql);
		query.setParameter("name", "%" + name + "%");
		@SuppressWarnings("uncheked")
		List<staff> list = query.list();
		return list;

	}
	
	@Transactional
	public staff findById(String id) {
		Session session = factory.openSession();
		return session.find(staff.class, id);

	}
}
