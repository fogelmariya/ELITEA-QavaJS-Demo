Feature: Internal Transfer Request Functionality

  Scenario: Verify File Copy to On-Prem Message Way
    Given Files are available in QC
    When I initiate file copy from QC to On-Prem Message Way
    Then I expect file copy process to start
    And I monitor file copy completion
    And I expect file copy to complete successfully
    And I check for error messages
    And I expect no error messages to be displayed
    And I verify files stored in Assigned Database
    And I expect files to be stored in 2 copies: Original and Working copies

  Scenario: Verify Terms and Conditions Modal Display
    Given Advisor User is logged in and has selected source and destination accounts
    When I initiate internal transfer request
    Then I expect transfer request initiation to start
    And I verify modal display
    And I expect modal with terms and conditions to be displayed
    And I check modal options
    And I expect options to accept or reject to be available

  Scenario: Verify Internal Transfer Between Same Customer Accounts
    Given Advisor User is logged in and has selected source and destination accounts within the same customer
    When I initiate internal transfer request
    Then I expect transfer request initiation to start
    And I complete transfer process
    And I expect transfer process to complete successfully
    And I verify account balances
    And I expect account balances to be updated correctly

  Scenario: Verify Internal Transfer Between Different Customers' Accounts
    Given Advisor User is logged in and has selected source and destination accounts between different customers
    When I initiate internal transfer request
    Then I expect transfer request initiation to start
    And I complete transfer process
    And I expect transfer process to complete successfully
    And I verify account balances
    And I expect account balances to be updated correctly
