public class AccountRoborUpdater {
    public static void updateAllAccountsWithRoborRate() {
        // Obține rata ROBOR
        String roborRateString = BnrRoborService.getRoborRate();
        
        if (roborRateString != null && roborRateString != '') {
            Decimal roborRate = Decimal.valueOf(roborRateString);
            
            // Selectează toate înregistrările Account
            List<Account> accounts = [SELECT Id, RoborRate__c FROM Account];
            
            // Actualizează fiecare înregistrare cu rata ROBOR
            for (Account acc : accounts) {
                acc.RoborRate__c = roborRate;
            }
            
            // Actualizează înregistrările în Salesforce
            if (accounts.size() > 0) {
                update accounts;
            }
        } else {
            System.debug('Nu s-a putut obține rata ROBOR.');
        }
    }
}