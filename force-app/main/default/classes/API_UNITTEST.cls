@isTest
private class API_UNITTEST {
	
	@isTest static void updateLead() {
		Lead myLead = new Lead();
		myLead.FirstName = 'Teslim';
		myLead.LastName = 'Badmus';
		myLead.Company = 'OTB Group Limited';
		insert myLead;

		myLead.Company = 'OTb Group Ltd';
		update myLead;

			}
	
}