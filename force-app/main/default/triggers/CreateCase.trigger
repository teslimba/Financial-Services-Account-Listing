trigger CreateCase on Account (after insert) {

    for (Account Acc : trigger.new) {
        Case C = new case();
        c.subject = 'Dedupe this account';
        c.ownerid = '0057F000002e5xX';
        c.accountid = Acc.id;
        insert c;
        
    }

}