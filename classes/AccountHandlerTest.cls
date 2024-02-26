@isTest
public class AccountHandlerTest {

    @isTest
    static void testUpdateAccountName() {
        // Test the updateAccountName method

        // Create a test Account
        Account testAccount = new Account(Name = 'Test Account');
        insert testAccount;

        // Call the method to update the account name
        AccountHandler.updateAccountName(testAccount, 'Updated Test Account');

        // Retrieve the updated account
        Account updatedAccount = [SELECT Id, Name FROM Account WHERE Id = :testAccount.Id];

        // Assert that the name has been updated
        System.assertEquals('Updated Test Account', updatedAccount.Name);
    }

    @isTest
    static void testCalculateAccountTotal() {
        // Test the calculateAccountTotal method

        // Create a test Account
        Account testAccount = new Account(Name = 'Test Account');
        insert testAccount;

        // Create two contacts related to the account
        Contact contact1 = new Contact(AccountId = testAccount.Id, LastName = 'Contact1');
        Contact contact2 = new Contact(AccountId = testAccount.Id, LastName = 'Contact2');
        insert new List<Contact>{contact1, contact2};

        // Call the method to calculate the total contacts for the account
        Integer totalContacts = AccountHandler.calculateAccountTotal(testAccount);

        // Assert that the total contacts is 2
        System.assertEquals(2, totalContacts);
    }
}