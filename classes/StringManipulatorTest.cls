[1:07 PM] Sai Lekhana Kari
@isTest

public class StringManipulatorTest {
 
    @isTest

    static void testConcatenateStrings() {

        // Test the concatenateStrings method
 
        String result = StringManipulator.concatenateStrings('Hello', 'World');
 
        // Assert that the result is 'HelloWorld'

        System.assertEquals('HelloWorld', result);

    }
 
    @isTest

    static void testReverseString() {

        // Test the reverseString method
 
        String result = StringManipulator.reverseString('Salesforce');
 
        // Assert that the result is 'ecruosliaS'

        System.assertEquals('ecruosliaS', result);

    }

}
