package org.tsure

class Person {
	
	
	String firstName;
	String lastName;
	String email;
	
	static hasMany = [payments:Payments]

    static constraints = {
		
		firstName(blank: false);
		lastName(blank: false);
		email(email: true, blank: false)
    }
}
