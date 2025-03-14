Feature: Internal Transfer Request

  Scenario: Advisor views Internal Transfer request form
    Given the client has accounts ACCT1, ACCT2
    And has assets associated with ACCT1 as:
      | Asset | Units |
      | AST1  | 10    |
      | AST2  | 15    |
      | Cash  | 100   |
    And has assets AST3 (12 units), AST4 (18 units) associated with ACCT2
    And has requested their Advisor to transfer below assets from ACCT1 to ACCT2:
      | Asset | Units |
      | AST1  | 10    |
    When Advisor is viewing the Internal Transfer request form
    And selects ACCT1 as source of transfer
    Then they will see AST1, AST2 listed in the investments grid along with corresponding units for each as:
      | Asset | Units |
      | AST1  | 10    |
      | AST2  | 15    |
      | Cash  | 100   |
    And Advisor sees all 3 assets listed in disabled state since there is no default value set for 'Quantity to transfer' or 'Transfer all available' field
    And select check box 'Transfer all available' for AST1
    And will see the 'Quantity to transfer' box populated with value as 10
    And will not take any action on AST2, Cash since it is not going to be transferred out of ACCT1
    And leave them in disabled state

    # Validations
    And I expect number of elements in 'Validations' collection to be equal '4'