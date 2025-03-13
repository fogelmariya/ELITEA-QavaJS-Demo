Feature: Internal Transfer Process

  Scenario: Verify Login as FNZ Admin User
    Given I open 'admin_site_url'
    When I type 'FNZ_Admin' to 'Username Input'
    And I type 'admin_password' to 'Password Input'
    And I click 'Login Button'
    Then I expect text of 'User Status' to equal 'Logged In'

  Scenario: Search for Client with Two Accounts
    Given I am logged in as FNZ Admin
    When I navigate to 'Application Pad'
    And I click on 'Clients'
    And I search for a client with two accounts
    Then I expect the list of clients to be shown
    And I click on the client link
    Then I expect the Client Overview page to be displayed

  Scenario: Initiate Internal Transfer of Assets
    Given I am on the Client Overview page
    When I select 'Quick Actions'
    And I select 'Transfers'
    And I choose 'Internal Transfer'
    Then I expect to see all Accounts and subaccounts listed
    When I select 'TFSA' as the source account
    And I select 'No' for change of beneficial owner
    Then I expect the internal transfer wizard to start

  Scenario: Verify Document Uploads
    Given I am on the internal transfer wizard
    When I click on 'Add new Document'
    And I select 'Adobe PDF document'
    Then I expect the PDF document to be added
    When I click on 'Add new Document'
    And I select 'Microsoft Word document'
    Then I expect the Word document to be added
    When I click on 'Add new Document'
    And I select 'JPG image'
    Then I expect the JPG image to be added
    When I click on 'Add new Document'
    And I select 'TIFF image'
    Then I expect the TIFF image to be added
    When I click on 'Add new Document'
    And I select 'JPEG image'
    Then I expect the JPEG image to be added

  Scenario: Submit Transfer Application
    Given I have completed the internal transfer form
    When I click on 'Next'
    Then I expect the transfer request form to be displayed for review
    When I click on 'Submit'
    Then I expect the application to be submitted successfully

  Scenario: Verify Transfer Details in Database
    Given I have submitted the transfer application
    When I navigate to 'Client > Transfer in progress'
    Then I expect to view attached documents
    And I expect the transfer details to be verified in the database
