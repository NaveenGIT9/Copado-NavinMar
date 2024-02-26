@isTest
public class OpportunityHandlerTest {

    @isTest
    static void testCloseOpportunityAsWon() {
        // Test the closeOpportunityAsWon method

        // Create a test Opportunity
        Opportunity testOpp = new Opportunity(Name = 'Test Opportunity', StageName = 'Prospecting', CloseDate = Date.today());
        insert testOpp;

        // Call the method to close the opportunity as won
        OpportunityHandler.closeOpportunityAsWon(testOpp);

        // Retrieve the updated opportunity
        Opportunity updatedOpp = [SELECT Id, StageName, CloseDate FROM Opportunity WHERE Id = :testOpp.Id];

        // Assert that the stage is now 'Closed Won'
        System.assertEquals('Closed Won', updatedOpp.StageName);

        // Assert that the CloseDate is set to today
        System.assertEquals(Date.today(), updatedOpp.CloseDate);
    }

    @isTest
    static void testCalculateOpportunityAmount() {
        // Test the calculateOpportunityAmount method

        // Create a test Opportunity with amount $10,000
        Opportunity testOpp = new Opportunity(Name = 'Test Opportunity', Amount = 10000);
        insert testOpp;

        // Call the method to calculate the opportunity amount
        Integer calculatedAmount = OpportunityHandler.calculateOpportunityAmount(testOpp);

        // Assert that the calculated amount is $10,000
        System.assertEquals(10000, calculatedAmount);
    }
}