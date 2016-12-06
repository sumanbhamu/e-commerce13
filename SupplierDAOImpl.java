package com.suman.ecom.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.suman.ecom.model.Supplier;

@Repository(value = "supplierDAO")
// @EnableTransactionManagement
public class SupplierDAOImpl implements SupplierDAO {
	

	@Autowired
	Supplier supplier;
	
	@Autowired
	SessionFactory sessionFactory;

	public SupplierDAOImpl(SessionFactory sessionFactory) {
		super();
		this.sessionFactory = sessionFactory;

	}

	public boolean delete(Supplier supplier) {
		return false;
	}

	
	
	@Transactional

	public boolean savOrUpdate(Supplier supplier) {
		try {

			Session s = sessionFactory.getCurrentSession();
			Transaction t = s.beginTransaction();
			s.saveOrUpdate(supplier);
			System.out.println("adding supplier  impl");
			
			t.commit();

			// sessionFactory.getCurrentSession().save(supplier);

			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	@Transactional
	
	public List<Supplier> list() {
		
		
			String hql = "from Supplier";
			Session s = sessionFactory.getCurrentSession();
			Transaction tx = s.beginTransaction();
			org.hibernate.Query query = s.createQuery(hql);
			List<Supplier> all=query.list();
			System.out.println("supplier list in impl");
			tx.commit();
			return all;
		}

	@Transactional
	
	public Supplier get(String name) {
		
		Session s = sessionFactory.getCurrentSession();
		Transaction tx = s.beginTransaction();
		String hql = "from Supplier where supplier_name="+"'"+name+"'";
		org.hibernate.Query query = s.createQuery(hql);
		List<Supplier> list=query.list();
		tx.commit();
		if(list==null || list.isEmpty())
		{return null;}
		else{
			System.out.println("getting supplier det. by name");

			return list.get(0);
		}

	}

}
