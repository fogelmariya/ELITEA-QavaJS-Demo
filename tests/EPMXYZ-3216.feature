Feature: File Operations

  Scenario: Verify File Copy to On-Prem Message Way
    Given Files are available in QC
    When Initiate file copy from QC to On-Prem Message Way
    Then File copy process starts successfully
    And Files are copied completely without errors
    And Files are present in On-Prem Message Way

  Scenario: Verify Storage of Files in Database
    Given Files are copied to On-Prem Message Way
    When Access the Assigned Database
    Then Database is accessible
    And Check for original and working copies of files
    Then Both original and working copies are stored in the database

  Scenario: Verify Display of Terms and Conditions Modal
    Given User accesses FNZ portal
    When Initiate asset transfer request
    Then Transfer request is initiated
    And Observe the display of terms and conditions modal
    Then Modal with terms and conditions is displayed
    And Options to accept or reject are available.