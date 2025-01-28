public class TestingStuff {
    
    public static void showAccountInfo() {
        Account acc = [SELECT Description FROM Account WHERE Name = 'United Oil & Gas Corp.' LIMIT 1];
        
        System.debug(acc.Description);
        
        acc.Description = 'Test';
        
        update acc;
    }

}