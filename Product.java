package com.kaushik.model;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.Min;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Entity
@Table
@Component
public class Product  {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	
	private int pid;
	private String pname;
	private String pdescription;
	@Min(value = 0, message = "The product price must not be less then zero")
	private double price;
	@Min(value = 0, message = "The product quantity must not be less then zero")
	private int quantity;
	
	@ManyToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="sup_id",nullable=false,insertable=false,updatable=false)

	private Supplier supplier;
	
	
	@ManyToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="cat_id",nullable=false,insertable=false,updatable=false)
   	private Category category;
	
	
private int cat_id;
	
	
	private int sup_id;
	
	public int getCat_id() {
		return cat_id;
	}
	public void setCat_id(int cat_id) {
		this.cat_id = cat_id;
	}
	public int getSup_id() {
		return sup_id;
	}
	public void setSup_id(int sup_id) {
		this.sup_id = sup_id;
	}
	public Supplier getSupplier() {
		return supplier;
	}
	public void setSupplier(Supplier supplier) {
		this.supplier = supplier;
	}
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	@Transient
private MultipartFile img;	
	
	
	
	
	 public MultipartFile getImg() {
		return img;
	}
	public void setImg(MultipartFile img) {
		this.img = img;
	}
	
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getPdescription() {
		return pdescription;
	}
	public void setPdescription(String pdescription) {
		this.pdescription = pdescription;
	}
	
}
