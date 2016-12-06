package com.suman.ecom.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.suman.ecom.model.Category;

@Repository("categoryDAO")
// @EnableTransactionManagement

public class CategoryDAOImpl implements CategoryDAO {

	/* @Autowired */
	SessionFactory sessionFactory;

	public CategoryDAOImpl(SessionFactory sessionFactory) {
		super();
		this.sessionFactory = sessionFactory;

	}

	public boolean delete(Category category) {
		return false;
	}

	@Transactional

	public boolean save(Category category) {
		try {

			Session s = sessionFactory.getCurrentSession();
			Transaction t = s.beginTransaction();
			s.saveOrUpdate(category);
			t.commit();

			// sessionFactory.getCurrentSession().saveOrUpdate(category);

			System.out.println("adding, saving categor   impl");

			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}

	}

	@Transactional

	public Category get(String name) {

		Session s = sessionFactory.getCurrentSession();
		Transaction tx = s.beginTransaction();
		String hql = "from Category where cat_name=" + "'" + name + "'";
		org.hibernate.Query query = s.createQuery(hql);
		List<Category> list = query.list();
		tx.commit();
		if (list == null || list.isEmpty()) {
			return null;
		} else {
			System.out.println("gets catogory in impl");
			return list.get(0);

		}

	}

	@Transactional

	public List<Category> list() {

		String hql = "from Category";
		Session s = sessionFactory.getCurrentSession();
		Transaction tx = s.beginTransaction();
		org.hibernate.Query query = s.createQuery(hql);
		List<Category> all = query.list();
		tx.commit();
		return all;
	}

}