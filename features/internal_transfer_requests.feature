Feature: Internal Transfer Requests

  Scenario: Sending Confirmation
    Given the files have been copied from QC to On Prem Message Way
    When the files have been completely copied to On-Prem Message Way
    Then the files need to be stored on Assigned Database in 2 copies: Original and Working copies

  Scenario: Display of Express Click to Pay CTA
    Given the Advisor User has selected the source and destination accounts for the internal transfer
    When the Advisor User initiates the transfer request
    Then the system should display a modal with the terms and conditions of the transfer, providing options to accept or reject
