@isTest
public class MathOperationsTest {
    // Test method to validate addNumbers method
    @isTest
    static void testAddNumbers() {
        // Define test data
        Integer number1 = 5;
        Integer number2 = 10;
        
        // Call the method being tested
        Integer result = MathOperations.addNumbers(number1, number2);
        
        // Verify the result
        Integer expected = number1 + number2;
        System.assertEquals(expected, result, 'The sum should be correct');
    }
}