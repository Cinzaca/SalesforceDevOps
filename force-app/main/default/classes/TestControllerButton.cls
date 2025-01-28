public class TestControllerButton {
    public void testActionButton() {
        Account acct1 = [SELECT Description FROM Account WHERE Name = 'United Oil & Gas Corp.'];
        
        acct1.Description = 'LoremIpsum';
        update acct1;
    }

}