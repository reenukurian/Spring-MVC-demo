package com.spring.mvc.validation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

import javax.validation.Constraint;
import javax.validation.Payload;

@Constraint(validatedBy = CourseCodeConstraintValidator.class)//the class which specifies the actual validation
@Target({ElementType.FIELD,ElementType.METHOD})//where all we can use this annotation
@Retention(RetentionPolicy.RUNTIME)//how long it should be retained as part of the compiled code
public @interface CourseCode {
	//define default course code
	public String Value() default "LUV";
	
	//define default error message
	public String message() default "must start with LUV";

	//define default groups
	public Class<?>[] groups() default {};	
	
	//define default payloads
	public Class<? extends Payload>[] payload() default {};
}
