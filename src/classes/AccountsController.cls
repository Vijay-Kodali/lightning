public class AccountsController {
	@AuraEnabled
    public static List<Account> findAll() {
        return [SELECT Name, Phone, Website FROM Account LIMIT 50];
    }
}