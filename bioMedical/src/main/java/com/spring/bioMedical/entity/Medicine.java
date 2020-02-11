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
@Table(name = "medicine")
public class Medicine {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "id")
	public int id;
	
	@Column(name = "medicine_name", nullable = false)
	@NotEmpty(message = "Please provide an Name")
    public String medicine_name;
    
    @Column(name = "description", nullable = false)
	@NotEmpty(message = "Please provide a description")
    public String description;
    
    @Column(name = "imageURL", nullable = true)
    public String imageURL;
    
    @Column(name = "actual_price", nullable = true)
    public float actual_price;
    
    @Column(name = "discount_price", nullable = true)
    public float discount_price;
    
    @Column(name = "quantity", nullable = true)
    public int quantity;
    
    @Column(name = "created_by", nullable = true)
	public int created_by;
	
	
	
	
	
	public int getid() {
		return id;
	}

	public void setid(int id) {
		this.id = id;
    }
    
    public String getmedicine_name() {
		return medicine_name;
	}

	public void setmedicine_name(String medicine_name) {
		this.medicine_name = medicine_name;
    }
    
    public String getdescription() {
		return description;
	}

	public void setdescription(String description) {
		this.description = description;
    }
    
    public String getimageURL() {
		return imageURL;
	}

	public void setimageURL(String imageURL) {
		this.imageURL = imageURL;
    }
    
    public float getactual_price() {
		return actual_price;
	}

	public void setactual_price(float actual_price) {
		this.actual_price = actual_price;
    }
    
    public float getdiscount_price() {
		return discount_price;
	}

	public void setdiscount_price(float discount_price) {
		this.discount_price = discount_price;
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
        return "Medicine [id=" + id + ", medicine_name=" + medicine_name + ", description=" + description +
        ", imageURL=" + imageURL + ", actual_price=" + actual_price + ", discount_price=" + discount_price
        + ", quantity=" + quantity + ", created_by=" + created_by + "]";
	}

	

}