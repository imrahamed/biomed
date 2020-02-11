package com.spring.bioMedical.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;

import org.springframework.data.annotation.Transient;

/**
 * 
 * @author Soumyadip Chowdhury
 * @github soumyadip007
 *
 */
@Entity
@Table(name = "orders")
public class Order {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "id")
	public int id;
	
	@Column(name = "medicine_id")
    public int medicine_id;
    
    @Column(name = "quantity")
    public int quantity;
    
    @Column(name = "created_by")
	public int created_by;
	
	
	
	
	
	public int getid() {
		return id;
	}

	public void setid(int id) {
		this.id = id;
    }
    
    public int getmedicine_id() {
		return medicine_id;
	}

	public void setmedicine_id(int medicine_id) {
		this.medicine_id = medicine_id;
    }
    
    
    public int getquantity() {
		return quantity;
	}

	public void setquantity(int quantity) {
		this.quantity = quantity;
    }
    
    public int getcreated_by() {
		return created_by;
	}

	public void setcreated_by(int created_by) {
		this.created_by = created_by;
	}

	@Override
	public String toString() {
		return "Order [id=" + id 
		+ ", medicine_id=" + medicine_id 
		+ ", quantity=" + quantity 
		+ ", created_by=" + created_by 
		+ "]";
	}

	

}