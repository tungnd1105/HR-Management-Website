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

@Repository
public class PhongBanDAO {

	@Autowired
	SessionFactory factory;// gọi sessionFactory

// void  insert
	public boolean insert(depart pb) {
		Session session = factory.openSession();
		Transaction transaction = session.beginTransaction();
		boolean success;
		try {
			session.save(pb);
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
	public boolean update(depart pb) {
		Session session = factory.openSession();
		Transaction transaction = session.beginTransaction();
		boolean sucess;
		try {
			session.update(pb);
			transaction.commit();
			sucess = true;
		} catch (Exception e) {
			e.printStackTrace();
			transaction.rollback();
			sucess = false;
		} finally {
			session.close();
		}
		return sucess;
	}

//void delete 
	public boolean delete(depart pb) {
		Session session = factory.openSession();
		Transaction transaction = session.beginTransaction();
		boolean sucess;
		try {
			session.delete(pb);
			transaction.commit();
			sucess = true;
		} catch (Exception e) {
			e.printStackTrace();
			transaction.rollback();
			sucess = false;
		} finally {
			session.close();
		}
		return sucess;
	}
	// đổ dữ liệu ra table

	@Transactional
	public List<depart> findAll() {
		Session session = factory.openSession();
		String hql = " From depart";
		Query query = session.createQuery(hql);
		List<depart> list = query.list();
		return list;
	}

	@Transactional
	public List<depart> search(String name) {
		Session session = factory.openSession();
		String hql = "from depart where departname like :departname";
		Query query = session.createQuery(hql);
		query.setParameter("departname", "%" + name + "%");
		@SuppressWarnings("uncheked")
		List<depart> list = query.list();
		return list;

	}
}
