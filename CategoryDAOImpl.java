package com.kaushik.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.kaushik.model.Category;
import com.kaushik.model.Supplier;

@Repository("categoryDAO")

public class CategoryDAOImpl implements CategoryDAO {
	
	@Autowired
	private SessionFactory sessionFactory;


	public CategoryDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
    @Transactional
	public List<Category> list() {
    	@SuppressWarnings("unchecked")
		List<Category> listCategory = (List<Category>) 
		          sessionFactory.getCurrentSession()
				.createCriteria(Category.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		return listCategory;
		
	}
    
    
    @Transactional
	public Category get(int cid) {
    	
    	String hql = "from Category where id=" + "'"+ cid +"'";
		//  from category where id = '101'
		Query query =  sessionFactory.getCurrentSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Category> listCategory = (List<Category>) query.list();
		
		if (listCategory != null && !listCategory.isEmpty()) {
			return listCategory.get(0);
		}
		return null;
		
	}
    
    @Transactional
	public void saveOrUpdate(Category category) {
		Transaction t=sessionFactory.getCurrentSession().beginTransaction();

		sessionFactory.getCurrentSession().saveOrUpdate(category);
        t.commit();
		
	}

    @Transactional
    public void delete(int cid) {
    	Category category=new Category();
		category.setCid(cid);
		sessionFactory.getCurrentSession().delete(category);
		
	}

	public Category getByName(String catname) {

		String hql = "from Category where cname=" + "'"+ catname +"'";

	    Query query = (Query) sessionFactory.openSession().createQuery(hql);
	    List<Category> listCategory = (List<Category>)  query.list();
	    
	    if  (listCategory != null && !listCategory.isEmpty()){
	        return listCategory.get(0);
	        
	    }
		return null;
	}

}
