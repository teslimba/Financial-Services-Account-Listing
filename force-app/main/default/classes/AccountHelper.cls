public with sharing class AccountHelper {
    @AuraEnabled(cacheable=true)
    public static List<Account> getFinancialServicesAccountListing() {
        return [SELECT Id, Name, OwnerId, Phone, Website, AnnualRevenue
            FROM Account where Industry=:'Financial Services'];
    }
}