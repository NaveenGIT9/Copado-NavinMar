public class AccountHandler {
    
    public static void updateAccountName(Account acc, String newName) {
        if (acc != null && newName != null) {
            acc.Name = newName;
            update acc;
        }
    }
    
    public static Integer calculateAccountTotal(Account acc) {
        Integer total = 0;
        if (acc != null && acc.Contacts != null) {
            total = acc.Contacts.size();
        }
        return total;
    }
}