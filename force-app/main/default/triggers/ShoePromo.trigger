trigger ShoePromo on Opportunity (after insert) {

    for (Opportunity Opp : Trigger.new)  {
        if (Opp.Amount > 50000) {
    
    
        Task t = new task();
        t.subject = 'New Shoe Promo';
        t.description = 'Send out a pair of shoes ASAP';       
        t.priority = 'High';
        t.whatid = opp.id;
        insert t;
     
        }
    }
}