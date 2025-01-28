public class AccountService {
    public static void updateAccountWithRoborRate(Id accountId) {
        String roborRate = BnrRoborService.getRoborRate();
        
        if (roborRate != null) {
            Account acc = [SELECT Id, RoborRate__c FROM Account WHERE Id = :accountId LIMIT 1];
            acc.RoborRate__c = Decimal.valueOf(roborRate);
            update acc;
        }
    }
}