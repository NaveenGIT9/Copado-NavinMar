@isTest
public class MathUtility1Test {

    @isTest
    static void testAddNumbers() {
        // Test the addNumbers method

        Integer result = MathUtility.addNumbers(3, 5);

        // Assert that the result is 8
        System.assertEquals(8, result);
    }

    @isTest
    static void testMultiplyNumbers() {
        // Test the multiplyNumbers method

        Integer result = MathUtility.multiplyNumbers(2, 4);

        // Assert that the result is 8
        System.assertEquals(8, result);
    }
    
     
}