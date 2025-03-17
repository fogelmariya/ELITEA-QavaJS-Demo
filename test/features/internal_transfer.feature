Feature: Internal Transfer Functionality

  As an Advisor User
  I want to be able to initiate internal transfers between accounts
  So that I can manage asset transfers efficiently

  Background:
    Given I am logged in as an Advisor User

  Scenario: Verify File Copy to On-Prem Message Way
    Given files are available in QC
    When I initiate file copy from QC to On-Prem Message Way
    Then the file copy process should start
    And the file copy should complete successfully
    And no error messages should be displayed
    And files should be stored in Assigned Database in 2 copies: Original and Working copies

  Scenario: Verify Terms and Conditions Modal Display
    Given I have selected source and destination accounts for internal transfer
    When I initiate an internal transfer request
    Then a modal with terms and conditions should be displayed
    And the modal should have options to accept or reject

  Scenario: Verify Internal Transfer Between Same Customer Accounts
    Given I have selected source and destination accounts within the same customer
    When I initiate an internal transfer request
    And I complete the transfer process
    Then the transfer should complete successfully
    And the account balances should be updated correctly

  Scenario: Verify Internal Transfer Between Different Customers' Accounts
    Given I have selected source and destination accounts between different customers
    When I initiate an internal transfer request
    And I complete the transfer process
    Then the transfer should complete successfully
    And the account balances should be updated correctly
