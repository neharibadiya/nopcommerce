Feature: Nopcommerce Acceptance Criteria

  as a user would like to nopcommerce Acceptance criteria page

  Scenario: User can see nopcommerce logo
  Given  User is on nopcommerce home page
  When   User enter <url>"https://demo.nopcommerce.com/tp"
  Then   User can see logo is visible

  Scenario Outline: User see top menu tabs on nopcommerce home page with categories
    Given User is on nopcommerce home page
    When  User enter <url>"https://demo.nopcommerce.com/tp" in browser
    And   User click on the nopcommerce logo
    Then  User can see the top menu tabs with "<categories>"
    Examples:
      | categories        |
      | computer          |
      | Electronics       |
      | Apparel           |
      | Digital Downloads |
      | Books             |
      | Jewellery         |
      | Gift Card         |

  Scenario: User see the book categories in top menu tabs on nopcommerce home page
  Given: User is on nopcommerce home page
  When:  User enter the <url>"https://demo.nopcommerce.com/tp"
  And:   User click on the nopcommerce logo
  And:   User select book categories in top menu tabs
  Then:  User should see successfully books categories on nopcommerce home page

  Scenario Outline: User see the books categories page with filter as sort by and display option
    Given User should be on book categories page
    When  User select "<Sort By>" into drop down list
    And   User select "<Display>" into drop down list
    Then  User see successfully list sort by and display
    Examples:
      | Sort By           | Display |
      | Name:A to Z       | 3       |
      | Name:Z to A       | 6       |
      | Price:Low to High | 9       |
      | Price:High to Low |         |
      | Created on        |         |

  Scenario: User see the books categories page with filter as the grid and list tab format
    Given  User should be on book categories page
    When   User select "Grid" tab symbol
    And    User select "List" tab symbol
    And    User select "Grid" Or "List" tab symbol
    Then   User can see select only one grid or list tab symbol

  Scenario Outline: User can choose the filter one in sort by option
    Given  User should be on book categories page
    When   User select "<SortBy>" Drop down list
    Then   User see able to all filter sorted one by one list
    And    "<ErrorMessage>" is displayed
    Examples:
      | SortBy            | ErrorMessage                                             |
      | Name:A to Z       | all product name in ascending alphabetical order A to Z  |
      | Name:Z to A       | all product name in descending alphabetical order Z to A |
      | Price:Low to High | all product price in ascending order price Low to High   |
      | Price:High to Low | all product price in descending order price High to Low  |
      | Created on        | add recently product should show first                   |

  Scenario Outline: User can choose the filter one by one in display option
    Given  User should be on book categories page
    When   User select "<Display>" drop down list
    Then   User can see successfully the selected number of product in page
    And    "<ErrorMessage>" is displayed
    Examples:
      | Display | ErrorMessage      |
      | 3       | 3 product in page |
      | 6       | 6 product in page |
      | 9       | 9 product in page |
