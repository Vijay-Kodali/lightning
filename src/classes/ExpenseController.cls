public with sharing class ExpenseController {
    @AuraEnabled
    public static List<kodali__Expense__c> getExpenses() {
        
        // Perform isAccessible() check here
        return [SELECT Id, Name, kodali__Amount__c, kodali__Client__c, kodali__Date__c,
                kodali__Reimbursed__c, CreatedDate FROM kodali__Expense__c];
    }
    @AuraEnabled
    public static kodali__Expense__c saveExpense(Expense__c expense) {
        
        // Perform isUpdateable() check here
        upsert expense;
        return expense;
    }
}