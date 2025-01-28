public class MyController {
    public void doSomething() {
        // Simulate an error condition
        boolean isError = true;

        if (isError) {
            ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.INFO, 'An error occurred. Please try again.'));
        } else {
            ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.INFO, 'Action completed successfully.'));
        }
    }
}