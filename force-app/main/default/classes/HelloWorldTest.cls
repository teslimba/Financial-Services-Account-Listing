@isTest
private class HelloWorldTest {
	
	@isTest static void UpdateLead() {
		// Implement test code
		Lead myLead = new lead();
			myLead.FirstName = 'Hello';
			myLead.LastName  = 'World';
			myLead.Company   = 'Google';
			insert myLead;

			myLead.Company = 'OBTMANLTD';
			update myLead;
	}
	
	// @isTest static void test_method_two() {
		// Implement test code
	//}
	
}