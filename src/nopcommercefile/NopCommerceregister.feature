Feature: Register functionality
  As a user would like to Register in nopcommerce account

  Scenario: User can see "Register" button is in middle under footer
    Given  User is in nopcommerce register page
    When   User enter "https://demo.nopcommerce.com/register" in browser
    Then   User see register button in the middle down of the register page

  Scenario Outline:User can select one "Gender" radio button
    Given  User is in nopcommerce register page
    When   User select "Male" radio button
    And    User select "Female" radio button
    Then   User can see select only one gender radio button
    Examples:
      | Male | Female |
      | 0    |        |
      |      | 0      |

  Scenario Outline: User should show A (*) mandatory symbol in all required field
    Given User is in nopcommerce register page
    When  User leave blank all "<Required Field >" field
    And   User click on register button
    Then  User show a mandatory symbol (*) on mandatory field
    And   "<Mandatorysymbol>" is displayed
    Examples:
      | Required Field   | Mandatory symbol                  |
      | First Name       | User can see (*) mandatory symbol |
      | Last Name        | User can see (*) mandatory symbol |
      | Email            | User can see (*) mandatory symbol |
      | Password         | User can see (*) mandatory symbol |
      | Confirm Password | User can see (*) mandatory symbol |

  Scenario Outline: User should select Date Of Birth drop down list
    Given User is in nopcommerce register page
    When  User select "<Day>" into drop down list
    And   User select "<Month>" into drop down list
    And   User select "<Year>" into drop down list
    Then  User should select date of birth
    Examples:
      | Day | Month | Year |
      | 03  | 02    | 2001 |
      | 04  | 03    | 2004 |
      | 25  | 05    | 2005 |
      | 13  | 11    | 2008 |
      | 15  | 09    | 2007 |

  Scenario Outline:User should register with all valid data in required field
    Given User is in nopcommerce register page
    When  User click "<Gender>" radio button
    And   User enter "<First name>" into first name field
    And   User enter "<Last Name>" into last name field
    And   User enter "<Date Of Birth>" into date of birth field
    And   User enter "<Company Name>" into company name field
    And   User enter "<Email>" into email field
    And   User enter "<Password>" into password field
    And   User enter "<Confirm Password>" into confirm password field
    And   User click On register button
    Then  User is able to registered
    And   "<ErrorMessage>" is displayed
    Examples:
      | Gender        | First name | Last Name | Date Of Birth | Company Name | Email                   | Password | Confirm Password | ErrorMessage            |
      | Male0/Female0 | Gautam     | Patel     | 03/06/2001    | Onestop      | gautampatel11@yahoo.com | xyz123   | xyz123           | Successfully Registered |

  Scenario Outline: User should register without optional data for optional field
    Given User  is in nopcommerce register page
    When  User click "<Gender>" radio button
    And   User enter "<First name>" into first name field
    And   User enter "<Last Name>" into last name field
    And   User enter "<Date Of Birth>" into date of birth field
    And   User enter "<Company Name>" into company name field
    And   User enter "<Email>" into email field
    And   User enter "<Password>" into password field
    And   User enter "<Confirm Password>" into confirm password field
    And   User click on register button
    Then  User is able to registered
    And   "<ErrorMessage>" is Displayed
    Examples:
      | Gender        | First name | Last Name | Date Of Birth | Company Name | Email                   | Password | Confirm Password | ErrorMessage                                       |
      |               | Gautam     | Patel     | 03/06/2001    | Onestop      | Gautampatel11@yahoo.com | xyz123   | xyz123           | Successfully Registered with without optional data |
      | Male0/Female0 | Gautam     | Patel     |               | Onestop      | Gautampatel11@yahoo.com | xyz123   | xyz123           | Successfully Registered with without optional data |
      | Male0/Female0 | Gautam     | Patel     | 03/06/2001    |              | Gautampatel11@yahoo.com | xyz123   | xyz123           | Successfully Registered with without optional data |
      |               | Gautam     | Patel     |               |              | Gautampatel11@yahoo.com | xyz123   | xyz123           | Successfully Registered with without optional data |

  Scenario Outline: User Should not register with invalid data for all field
    Given User is in nopcommerce register page
    When  User click "<Gender>" radio button
    And   User enter "<First name>" into first name field
    And   User enter "<Last Name>" into last name field
    And   User enter "<Date Of Birth>" into date of birth field
    And   User enter "<Email>" into email field
    And   User enter "<Password>" into password field
    And   User enter "<Confirm Password>" into confirm password field
    And   User click on register button
    Then  User is not able to registered
    And   "<ErrorMessage>" is Displayed
    Examples:
      | Gender        | First name | Last Name | Date Of Birth | Email                   | Password | Confirm Password | ErrorMessage |
      | Male0/Female0 |            | Patel     | 03/06/2001    | gautampatel11@yahoo.com | xyz123   | xyz123           | Invalid data |
      | Male0/Female0 | Gautam     |           | 03/06/2001    | gautampatel11@yahoo.com | xyz123   | xyz123           | Invalid data |
      | Male0/Female0 | Gautam     | Patel     | 03/06/2001    |                         | xyz123   | xyz123           | Invalid data |
      | Male0/Female0 | Gautam     | Patel     | 03/06/2001    | gautampatel11@yahoo.com | xyz123   | xyz123           | Invalid data |
      | Male0/Female0 | Gautam     | Patel     | 03/06/2001    | gautampatel11@yahoo.com |          | xyz123           | Invalid data |
      | Male0/Female0 | Gautam     | Patel     | 03/06/2001    | gautampatel11@yahoo.com | xyz123   |                  | Invalid data |
      | Male0/Female0 |            | Patel     | 03/06/2001    | gautampatel11@yahoo.com | xyz123   | yzx123           | Invalid data |
      | Male0/Female0 |            | Patel     | 03/06/2001    | gautampatel11yahoo.com  | xyz123   | xyz123           | Invalid data |
      | Male0/Female0 |            | Patel     | 03/06/2001    | gautampatel11@.com      | xyz123   | xyz123           | Invalid data |
      | Male0/Female0 |            | Patel     | 03/06/2001    | gautampatel@yahoo.com   | xyz123   | xyz123           | Invalid data |
      | Male0/Female0 |            | Patel     | 03/06/2001    | gautampatel13@yahoo.com | xyz123   | xyz123           | Invalid data |


