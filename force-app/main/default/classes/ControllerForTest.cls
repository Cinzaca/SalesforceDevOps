public class ControllerForTest {
    
    private ApexPages.StandardController stdController;
    public ControllerForTest(ApexPages.StandardController stdController) {
        this.stdController = stdController;
    }
    public PageReference myCustomAction() {
        // Your custom logic here
        return null;
    }

    public void testActionButton() {
        Account acct1 = [SELECT Description FROM Account WHERE Name = 'United Oil & Gas Corp.'];
        
        acct1.Description = 'LoremIpsum';
        update acct1;
    }
}