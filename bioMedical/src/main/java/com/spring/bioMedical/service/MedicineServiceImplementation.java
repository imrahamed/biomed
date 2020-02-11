package com.spring.bioMedical.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.bioMedical.entity.Admin;
import com.spring.bioMedical.entity.Medicine;
import com.spring.bioMedical.repository.MedicineRepository;

/**
 * 
 * @author Soumyadip Chowdhury
 * @github soumyadip007
 *
 */
@Service
public class MedicineServiceImplementation  {

	private MedicineRepository medicineRepository;

	//inject employee dao
	@Autowired   //Adding bean id @Qualifier
	public MedicineServiceImplementation( MedicineRepository obj)
	{
		medicineRepository=obj;
	}
	
	
	public void save(Medicine med)
	{
		
		medicineRepository.save(med);
	}
	
	
	public List<Medicine> findAll() {
		return medicineRepository.findAll();
	}


	
}
