/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 01-13-2025
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public with sharing class ContactController {
        @AuraEnabled(cacheable=true)
        public static List<Contact> getContacts() {

            throw new AuraHandledException('Forced error');
            /*return [
                SELECT FirstName, LastName, Email
                FROM Contact
                WITH SECURITY_ENFORCED
                ORDER BY FirstName
            ];*/
        }
}