package com.eric.waterbnb.validators;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.eric.waterbnb.models.Pool;
import com.eric.waterbnb.services.PoolService;

@Component
public class PoolValidator implements Validator {
	
	private PoolService poolService;
	
	public PoolValidator(PoolService poolService) {
		this.poolService = poolService;
	}
	
	@Override
	public boolean supports(Class<?> clazz) {
		return Pool.class.equals(clazz);
	}
	
	@Override
	public void validate(Object object, Errors errors) {
		Pool pool = (Pool) object;
		
		if(pool.getCost() == null) {
			errors.rejectValue("cost", "Blank");
		}
		
		if(pool.getSize() == null) {
			errors.rejectValue("size", "Blank");
		}
	}
}
