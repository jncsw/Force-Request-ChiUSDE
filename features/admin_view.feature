Feature: admin SignUp and login
  As an administrator
  So that I have all the privilege
  I want to login to the force request system with password
  
Scenario: Admin Login
Given I am on the Login Page as admin
And I use admin account to login
Then I should be on Admin View page
And I should see all requests here

Scenario: Admin Actions
Given I am on the Login Page as admin
And I use admin account to login
Then I should be on Admin View page
And I should see all requests here
When I click More Actions
Then I should go to action page
When I add a new admin
And I fill the info of new admin
Then I should back to admin dashboard
When I click More Actions
Then I should go to action page
When I click add a new student
And I fill the info of new student
Then I should go to action page
When I click add a new force request to system
#And I fill the info of new request
#Then I should go to action page


Scenario: Admin Control
Given I am on the Login Page as admin
And I use admin account to login
Then I should be on Admin View page
And I should see all requests here
When I filter the requests
Then I have the requests in desired domain
When I click course name button
Then the page collapse


# Scenario: Approve request
# Given I am on the Login Page as admin
# And I use admin account to login
# Then I should be on Admin View page
# When I click Approve
# Then I should see Approved

# Scenario: Reject request
# Given I am on the Login Page as admin
# And I use admin account to login
# Then I should be on Admin View page
# When I click Reject
# Then I should see Rejected

Scenario: Hold request
Given I am on the Login Page as admin
And I use admin account to login
Then I should be on Admin View page
# When I click Hold  # Feature nolonger exists
# Then I should see Hold

# Scenario: Add Notes
# Given I am on the Login Page as admin
# And I use admin account to login
# Then I should be on Admin View page
# When I click View Details
# Then I should see Request Id Details


Scenario: Update Request with nothing changed
Given I am on the Login Page as admin
And I use admin account to login
And I click first Update Selected
Then I should be on the custom message page
And I type in a custom message
Then I should see Nothing has been selected for Update

Scenario: Admin set limits on courses
Given I am on the Login Page as admin
And I use admin account to login
Then I should be on Admin View page
And I should see all requests here
When I click More Actions
Then I should go to action page
Then I click Set Force Request Limit
Then I should be on the set limits page
And I enter the limits
Then I should see limits were set

Scenario: Edit email template
Given I am on the Login Page as admin
And I use admin account to login
Then I should be on Admin View page
And I should see all requests here
When I click More Actions
Then I should go to action page
Then I click Edit Email Template
#Then I should be on the email template page
#And I should see template message
#And I edit the template
#Then I should see that the template was updated