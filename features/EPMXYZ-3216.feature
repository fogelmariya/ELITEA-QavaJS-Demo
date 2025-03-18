Feature: Test Cases for EPMXYZ-3216

  # Test Case 1: Verify File Copy to On-Prem Message Way
  Scenario: Verify File Copy to On-Prem Message Way
    Given Files are available in QC
    When I initiate file copy from QC to On-Prem Message Way
    Then File copy process starts successfully
    When I monitor the file copy process
    Then Files are copied completely without errors
    When I verify files in On-Prem Message Way
    Then Files are present in On-Prem Message Way

  # Test Case 2: Verify Storage of Files in Database
  Scenario: Verify Storage of Files in Database
    Given Files are copied to On-Prem Message Way
    When I access the Assigned Database
    Then Database is accessible
    When I check for original and working copies of files
    Then Both original and working copies are stored in the database

  # Test Case 3: Verify Display of Terms and Conditions Modal
  Scenario: Verify Display of Terms and Conditions Modal
    Given User accesses FNZ portal
    When I initiate asset transfer request
    Then Transfer request is initiated
    When I observe the display of terms and conditions modal
    Then Modal with terms and conditions is displayed
    When I verify options to accept or reject
    Then Options to accept or reject are available