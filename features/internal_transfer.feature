Feature: Internal Transfer Request

  Scenario: Sending Confirmation to QC
    Given The Files have been copied from QC to On Prem Message Way
    When The files have been completely copied to On-Prem Message Way Message: "The address format is invalid."
    And The address is not serviceable.
    Then The files need to be stored on Assigned Database in 2 copies: Original and Working copies

  Scenario: Display of Express Click to Pay CTA
    Given The Advisor User has selected the source and destination accounts for the internal transfer
    When The Advisor User initiates the transfer request
    Then The system should display a modal with the terms and conditions of the transfer, providing options to accept or reject.