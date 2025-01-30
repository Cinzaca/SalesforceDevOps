/**
 * testing
 * testing 2
 * testing 3
 * testing 4
 * testing 5
 * testing 6
 * testing 7
 * testing 8
**/
public with sharing class AccountController {
    @AuraEnabled(cacheable=true)
    public static List<Account> getAccounts() {
        return [
            SELECT Name, AnnualRevenue, Industry
            FROM Account
            WITH SECURITY_ENFORCED
            ORDER BY Name
        ];
    }
}