@isTest
private class ShoePromoTest {
	
	@isTest static void CreateNewOpp() {
		// Implement test code
		Opportunity Opp = new Opportunity();
		Opp.Name = 'TeslimBoy';
		Opp.StageName = 'New';
		Opp.CloseDate = Date.today();
		Opp.Amount = 51000;

		insert Opp;

	}
	
	//@isTest static void test_method_two() {
		// Implement test code
	//}
	
}