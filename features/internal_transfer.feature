Feature: Internal Transfer Document Upload

  Scenario: Advisor uploads documents for internal transfer
    Given the advisor has logged in as FNZ Admin user
    When the advisor navigates to the client with two accounts
    And the advisor selects the source account for internal transfer
    And the advisor selects the destination account
    And the advisor attempts to upload 10 documents
    Then I expect number of elements in 'Validations' collection to be equal '4'
    And the advisor should be able to submit the application successfully
    And the advisor should see the attached documents in the transfer in progress section

  Scenario: Advisor attempts to upload more than 10 documents
    Given the advisor has logged in as FNZ Admin user
    When the advisor navigates to the client with two accounts
    And the advisor selects the source account for internal transfer
    And the advisor selects the destination account
    And the advisor attempts to upload 11 documents
    Then I expect number of elements in 'Validations' collection to not equal '4'
    And the advisor should see an error message indicating that only 10 documents can be uploaded.