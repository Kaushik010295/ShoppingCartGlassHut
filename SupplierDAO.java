package com.kaushik.dao;

import java.util.List;

import com.kaushik.model.Supplier;

public interface SupplierDAO {
	

	public List<Supplier> list();

	public Supplier get(int sid);
	public Supplier getByName(String supname) ;



	public void saveOrUpdate(Supplier supplier);

	public void delete(int sid);

}
