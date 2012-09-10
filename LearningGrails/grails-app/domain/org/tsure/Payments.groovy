package org.tsure

class Payments {
	
	String type;
	double totalAmount;
	String paidBy;
	int dividePaidAmtBy=2;
	boolean rent = false;
	Date dateCreated;
	Date lastUpdated;
	double perPersonAmt;
	
	static belongsTo = [person:Person]
	
	def beforeInsert() {
		
		if(rent) {
			perPersonAmt=0;
			
		}
		
		perPersonAmt = totalAmount/dividePaidAmtBy
	}

	
    static constraints = {
		
		type blank:false;
		totalAmount blank:false;
		rent()
		paidBy inList: ["Tanveer", "Nachiket"]
		dividePaidAmtBy display: false;
		perPersonAmt display: false;
    }
}
