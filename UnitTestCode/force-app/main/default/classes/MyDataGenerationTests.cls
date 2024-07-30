@IsTest
private class MyDataGenerationTests {
  @TestSetup
  static void loadTestDataFromStaticResource() {
    // GIVEN
    List<sObject> accounts = Test.loadData(Account.SObjectType, 'otherAccountData');
  }
  @IsTest
  static void testLoadAccountsFromStaticResource() {
    // WHEN
    List<Account> accts = [SELECT ID FROM Account];
    // THEN
    Assert.isTrue(accts.size() == 15, 'Expected 15 accounts');
  }

  @IsTest
static void testLoadOtherAccountsFromStaticResource() {
  // GIVEN
  List<Account> accts;
  List<Contact> contacts;
  TestFactory.generateAccountWithContacts(14);
  // WHEN
  Test.startTest();
    accts = [SELECT Id FROM Account];
    contacts = [SELECT Id FROM Contact];
  Test.stopTest();
  // THEN
  Assert.isTrue(accts.size() > 0, 'Was expecting to find at least one account');
  Assert.areEqual(15, contacts.size(), 'Was expecting to find 15 contacts');
}
}