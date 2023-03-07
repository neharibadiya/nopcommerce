Feature: nopcommerce top menu acceptance criteria

  As a User Would like to check acceptance criteria of nopcommerce top menu

  Scenario: User can see nopcommerce logo
    Given User is in nopcommerce home page
    When  User Enter the URL in browser
    And   User check the logo is visible or not
    Then  User can see logo is visible

  Scenario: User can not see nopcommerce logo
    Given  User is in nopcommerce home page
    When   User Enter the URL in browser
    And    User check the  logo is visible or not
    Then   User can not see logo is visible

  Scenario: User see top menu tabs on nopcommerce home page in Header
    Given  User is in nopcommerce home page
    When   User enter the URL IN browser
    And    User click on the nopcommerce logo
    Then   User can see the top menu tabs as a computer,Electronics,apparel,digital download,Books,Jewellery,Gift card

  Scenario: User see the book categories in top menu tabs on nopcommerce home page
    Given   User is on nopcommerce home page
    When    User enter the <url>"https://demo.nopcommerce.com/tp"
    And     User click on the nopcommerce logo
    And     User select book categories in top menu tabs
    Then    User Should See Successfully  Books Categories On nopCommerce Home Page

  Scenario Outline: User see the books categories page with filter as Sort By and Diplay Option
    Given     User should be on Book categories page
    When      User select "<sort by>" into drop down list
    And       User select "<Display>" into drop down list
    Then      User see successfully list sort by and display

  Scenario: Verify that user can see 'Grid' tab on Book Category page
    Given User is on Books Category page
    When  User is on Books Category page
    And   Check 'Grid' tab is present
    Then  'Grid' tab is available on Book Category page

  Scenario: Verify that user can see 'List' tab on Book Category page
    Given User is on Books Category page
    When  User is on Books Category page
    And   Check 'List' tab is present
    Then  'List' tab is available on Book Category page



