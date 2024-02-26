public class OpportunityHandler {

    public static void closeOpportunityAsWon(Opportunity opp) {
        if (opp != null) {
            opp.StageName = 'Closed Won';
            opp.CloseDate = Date.today();
            update opp;
        }
    }

    public static Integer calculateOpportunityAmount(Opportunity opp) {
        Integer totalAmount = 0;
        if (opp != null && opp.Amount != null) {
            totalAmount = opp.Amount.intValue();
        }
        return totalAmount;
    }
}