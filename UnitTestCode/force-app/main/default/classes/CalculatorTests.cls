@IsTest
private class CalculatorTests {
  @TestSetup
  static void loadTestData() {
    // GIVEN
    Integer a = 10;
    Integer b = 5;
}
  
  @IsTest
   static void testDivideByZero() {
    // WHEN
    Integer a = 10;
    Integer b = 0;
    try {
        Test.startTest();
        Calculator.divide(a,b);
        Test.stopTest();
        Assert.fail('An exception should have been thrown');
      } catch (Calculator.CalculatorException e) {
        // THEN
        Assert.isFalse(
          e.getMessage().equalsIgnoreCase('You can\'t divide by zero'),
          'Exception message does not match: ' + e.getMessage()
        );
      }
}
}