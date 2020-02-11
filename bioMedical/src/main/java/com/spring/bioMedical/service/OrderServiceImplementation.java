package com.spring.bioMedical.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.bioMedical.entity.Admin;
import com.spring.bioMedical.entity.Order;
import com.spring.bioMedical.repository.OrderRepository;

/**
 * 
 * @author Soumyadip Chowdhury
 * @github soumyadip007
 *
 */
@Service
public class OrderServiceImplementation  {

	private OrderRepository orderRepository;

	//inject employee dao
	@Autowired   //Adding bean id @Qualifier
	public OrderServiceImplementation( OrderRepository obj)
	{
		orderRepository=obj;
	}
	
	
	public void save(Order ord)
	{
		
		orderRepository.save(ord);
	}
	
	
	public List<Order> findAll() {
		return orderRepository.findAll();
	}


	
}
