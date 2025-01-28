@isTest
public class AccountTriggerTest {
	
    @isTest static void TestCreateNewAccountInBulk() {
        
        List<Account> accts = new List<Account>();
        
        for(Integer i = 0; i < 200; i++) {
            
            Account a = new Account(Name = 'Test Account ' + i, BillingState = 'CA');
            
            accts.add(a);
        }
        
        Test.startTest();
        
        insert accts;
        
        Test.stopTest();
        
        List<Account> verifyList = [SELECT ShippingState FROM Account];
        
        for(Account a : verifyList) {
            System.assertEquals('CA', a.ShippingState, 'ERROR');
        }
    }
}