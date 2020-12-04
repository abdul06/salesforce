
//  click "gear icon" on top right -> click "Setup" -> click "Object Manager" 
//  select object to set trigger on exp: "Account" -> click "Triggers" -> click "New" on the top right

// Trigger Synthax
trigger triggerName on Objectname(trigger_events)
{
//code_block
}

// Setup class with correct triggers events
// before insert
trigger CalloutTrigger on Account (before insert, before update) {
    CalloutClass.makeCallout();
}


// Resources
// https://trailhead.salesforce.com/en/content/learn/modules/apex_triggers/apex_triggers_intro

// https://intellipaat.com/blog/tutorial/salesforce-tutorial/triggers-in-salesforce/
// https://developer.salesforce.com/forums/?id=9060G000000I75MQAS
// Trigger Events
// before insert - beforce 
// before update
// before delete
// after insert
// after update
// after delete
// after undelete