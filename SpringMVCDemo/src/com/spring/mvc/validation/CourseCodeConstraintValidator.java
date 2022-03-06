package com.spring.mvc.validation;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class CourseCodeConstraintValidator implements ConstraintValidator<CourseCode, String> {

	private String coursePrefix;
	@Override
	public boolean isValid(String TheCode, ConstraintValidatorContext validatorContext) {
		// TODO Auto-generated method stub
		Boolean result;
		if(TheCode!=null)
			result=TheCode.startsWith(coursePrefix);
		else
			return true;
		return result;
	}

	@Override
	public void initialize(CourseCode thecode) {
		// TODO Auto-generated method stub
		coursePrefix=thecode.Value();
	}

}
