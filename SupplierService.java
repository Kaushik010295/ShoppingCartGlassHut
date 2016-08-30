package com.kaushik.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kaushik.dao.SupplierDAO;
import com.kaushik.model.Supplier;

@Service
public class SupplierService implements SupplierServiceInt {
	@Autowired
	SupplierDAO supplierDAO;
	
	public void saveOrUpdate(Supplier supplier)
	{
		supplierDAO.saveOrUpdate(supplier);	
	}
	public List<Supplier> list()
	{
		List<Supplier> list=supplierDAO.list();
		return list;
	}
	public Supplier get(int sid)
	{
		return supplierDAO.get(sid);
	}
	
	public void delete(int sid)
	{
		supplierDAO.delete(sid);
	}
	public Supplier getByName(String supname) {
		return supplierDAO.getByName(supname);
	}
	
	

}
