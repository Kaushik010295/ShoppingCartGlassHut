package com.kaushik.service;

import java.util.List;

import com.kaushik.model.Supplier;

public interface SupplierServiceInt {
	
	public List<Supplier> list();

	public Supplier get(int sid);

	public void saveOrUpdate(Supplier supplier);

	public void delete(int sid);
	public Supplier getByName(String supname) ;


}
