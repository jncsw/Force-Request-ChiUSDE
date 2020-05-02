# features/student_view.feature
Feature: Student View
  As a student
  I want to login to my account
  So I can submit/withdraw force request and update my profile

Background: students have been added to database 

Given the following students exist:
  | name       | firstname  |  lastname    | uin        | password   | email                | major               |classification | Minor           
  | junqi yang | junqi      |   yang       | 221004901  | d0d1699f721b379f002fe5fb2f781ebe     | junqiyang@tamu.edu   | Computer Science    |G7             | Animal Science
  | Adam will  | Adam       |   will       | 000000000  | d0d1699f721b379f002fe5fb2f781ebe     | Will@tamu.edu        | Computer Science    |G7             | Animal Science
  | John myer  | John       |   myer       | 000000001  | d0d1699f721b379f002fe5fb2f781ebe     | jmyer@tamu.edu       | Computer Science    |U1             | Animal Science
  
Given the following limits exist:
  | classification | Very High | High | Normal | Low | Very Low
  |     G7         |    5      |  5   |   5    |  5  |    5
  |     G8         |    5      |  5   |   5    |  5  |    5
  |     U1         |    5      |  5   |   5    |  5  |    5
   
Scenario: View profile
When I am on the Login Page
When I login with correct login info
Then I should be on Student Dashboard Page
When I click my profile
Then I should see my personal information
And I click OK
Then I should go back to dashboard

Scenario: Update profile
When I am on the Login Page
When I login with correct login info
Then I should be on Student Dashboard Page
When I click my profile
Then I should see my personal information
And I click Update
Then I should be on root page
And I should see update success

Scenario: Update profile
When I am on the Login Page
When I login with correct login info
Then I should be on Student Dashboard Page
When I click my profile
Then I should see my personal information
When I fill out the UIN worng
And I click Update
Then I should see error message for same UIN
When I fill out the email worng
And I click Update
Then I should see error message for same email

Scenario: Add/withdraw new requests
When I am on the Login Page
When I login with correct login info
Then I should be on Student Dashboard Page
When I click on New Force Request
#And I complete the form 
#And I click Save Request
#Then I should see a confirm message
#Then I should be on Student Dashboard Page
#When I click on Delete
#Then I should not see that request on Student Dashboard Page

Scenario: Student change password with right information
When I am on the Login Page
When I login with correct login info
Then I should be on Student Dashboard Page
When I click change password button
Then I should be on change password page
When I fill the form and confirm
Then I should read a successful message

Scenario: Student change password with wrong information
When I am on the Login Page
When I login with correct login info
Then I should be on Student Dashboard Page
And I click change password button
Then I should be on change password page
When I fill the old password wrongly
Then I stay on the page on recieve warining
When I fill the new password wrongly
Then I stay on the page on recieve another warining
When I withdraw this request
Then I will back to student dashboard

Scenario: Student Logout
When I am on the Login Page
When I login with correct login info
And I click logout button
Then I should be on root page

Scenario: Student Forget Password
When I am on the Login Page
And I click forget password
Then I should be on reset password page
When I input my Email and click reset
Then I should see a message

#New Cucumber tests added
Scenario: Add priority on requests
When I am on the Login Page
When I login with correct login info
Then I should be on Student Dashboard Page
When I click on New Force Request
#And I complete the form
#And I assign priority to the request
#And I click Save Request
#Then I should see the request with priority
#Then I should be on Student Dashboard Page

Scenario: Maximum force request limit for graduate student
When I am on the Login Page
When I login with correct login info
Then I should be on Student Dashboard Page
When I click on New Force Request
#nd I complete the form 
#And I click Save Request
#Then I should see a confirm message
#Then I should be on Student Dashboard Page
#When I click on New Force Request
#And I complete the form the second time
#And I click Save Request
#Then I should see a confirm message for second request
#Then I should be on Student Dashboard Page
#When I click on New Force Request
#And I complete the form the third time
#And I click Save Request
#Then I should see a confirm message for third request
#Then I should be on Student Dashboard Page
#When I click on New Force Request
#And I complete the form the fourth time
#And I click Save Request
#Then I should see a error message for maximum limit
#Then I should be on Student Dashboard Page

#Scenario: Maximum force request limit for undergraduate student
#When I am on the Login Page
#When I login with correct login info as undergraduate student
#Then I should be on Student Dashboard Page
#When I click on New Force Request
#And I complete the form 
#And I click Save Request
#Then I should see a confirm message
#Then I should be on Student Dashboard Page
#When I click on New Force Request
#And I complete the form the second time
#And I click Save Request
#Then I should see a confirm message for second request
#Then I should be on Student Dashboard Page
#When I click on New Force Request
#And I complete the form the third time
#And I click Save Request
#Then I should see a confirm message for third request
#Then I should be on Student Dashboard Page
#When I click on New Force Request
#And I complete the form the fourth time
#And I click Save Request
#Then I should see a confirm message for fourth request
#Then I should be on Student Dashboard Page
#When I click on New Force Request
#And I complete the form the fifth time
#And I click Save Request
#Then I should see a confirm message for fifth request
#Then I should be on Student Dashboard Page
#When I click on New Force Request
#And I complete the form the sixth time
#And I click Save Request
#Then I should see a error message for maximum limit
#Then I should be on Student Dashboard Page

Scenario: Editing Request
When I am on the Login Page
When I login with correct login info
Then I should be on Student Dashboard Page
#When I click on New Force Request
#And I complete the form 
#And I click Save Request
#Then I should see a confirm message
#Then I should be on Student Dashboard Page
#When I click on Edit
#Then I should be on edit request page
#And I edit the request
#And I click Save Request
#Then I should see a confirmation message
#Then I should be on Student Dashboard Page