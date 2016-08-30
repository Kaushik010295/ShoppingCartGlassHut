package com.kaushik.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.kaushik.model.Product;


@Repository("productDAO")

public class ProductDAOImpl implements ProductDAO {
	
	
	@Autowired
	SessionFactory sessionFactory;
	
	public ProductDAOImpl(){}
	public ProductDAOImpl(SessionFactory sf){
		sessionFactory=sf;
	}




	@Transactional
	public List<Product> list() {

	    Session s = sessionFactory.getCurrentSession();
	    Transaction tx = s.beginTransaction();
	    List<Product> listProduct = s.createCriteria(Product.class).list();
	    return listProduct;
	    
	}

	@Transactional
    public Product get(int pid) {
		
		Session session=sessionFactory.getCurrentSession();
		Transaction transaction=session.beginTransaction();
		Product product=session.load(Product.class,new Integer(pid));
		return product;
		
	
	}

	@Transactional
     public void saveOrUpdate1(Product pd) {
		
		
		
		
		Session s=sessionFactory.getCurrentSession();
		Transaction t=s.beginTransaction();
		System.out.println("ProductDAO impl" +  pd);
		s.saveOrUpdate(pd);
		t.commit();	

	}
	

	@Transactional
    public void delete(int pid) {
		System.out.println("Id in deleteProduct(int id):"+pid);
		
		Session session=sessionFactory.getCurrentSession();
	    Transaction tx=session.beginTransaction();
	    Product product = (Product)session.load(Product.class, pid);
	
	    session.delete(product);
	    tx.commit();
	    System.out.println("deleted");
		
		
	
		
	}
	public void updateProduct(Product product) {
		
		
		Session session=sessionFactory.getCurrentSession();
		Transaction transaction=session.beginTransaction();
		session.update(product);
		transaction.commit();
		System.out.println("updated");
	}

		
	}

	
	

