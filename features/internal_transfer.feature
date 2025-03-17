Feature: Internal Transfer Functionality

  Scenario: Verify File Copy to On-Prem Message Way
    Given the files have been copied from QC to On Prem Message Way
    When the files have been completely copied to On-Prem Message Way
    Then I expect the message "The address format is invalid." to be displayed
    And I expect the message "The address is not serviceable." to be displayed
    And I expect the files to be stored on Assigned Database in 2 copies: Original and Working copies

  Scenario: Verify Terms and Conditions Modal Display
    Given I am logged in as an Advisor User
    And I have selected the source account for internal transfer
    And I have selected the destination account for internal transfer
    When I initiate the transfer request
    Then I expect the terms and conditions modal to be displayed
    And I expect the modal to have options to accept or reject

  Scenario: Verify Internal Transfer Between Same Customer Accounts
    Given I am logged in as an Advisor User
    And I have selected the source account "Account1" for Customer A
    And I have selected the destination account "Account2" for Customer A
    When I initiate the internal transfer request
    Then I expect the transfer request to be submitted successfully
    And I expect number of elements in 'Validations' collection to be equal '4'

  Scenario: Verify Internal Transfer Between Different Customers' Accounts
    Given I am logged in as an Advisor User
    And I have selected the source account "Account1" for Customer A
    And I have selected the destination account "Account1" for Customer B
    When I initiate the internal transfer request
    Then I expect the transfer request to be submitted successfully
    And I expect number of elements in 'Validations' collection to be equal '4'