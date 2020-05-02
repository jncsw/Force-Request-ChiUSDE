When(/^I login with correct login info$/) do
  @user_info = {:email => "CSCE606Spring2020@tamu.edu",  :password => "CSCE606Spring2020"}
  
  fill_in('Enter your Email', :with => @user_info[:email])
  fill_in('Enter your password', :with => @user_info[:password])
  click_button('Login')
end

When(/^I login with correct login info as undergraduate student$/) do
  @user_info = {:email => "jmyer@tamu.edu",  :password => "151718"}
  fill_in('Enter your Email', :with => @user_info[:email])
  fill_in('Enter your password', :with => @user_info[:password])
  click_button('Login')
end

Then (/^I should be on Student Dashboard Page$/) do
  page.should have_content("New Force Request")
  page.should have_content("Your Profile")
  page.should have_content("Change Your Password")
end

############################################################################################################
#view profile
############################################################################################################

When(/^I am on Dashboard$/) do
  page.should have_content("New Force Request")
  page.should have_content("Your Profile")
  page.should have_content("Change Your Password")
end

When(/^I click my profile$/) do
    click_link("View Your Profile")
end

Then(/^I should see my personal information$/) do
  page.should have_content("Full Name")
  page.should have_content("Major")
  page.should have_content("Classification")
  page.should have_content("Email")
end

And (/^I click OK$/) do
  click_button('Back')
end

And (/^I click Update$/) do
  click_button('Update')
end

Then (/^I should go back to dashboard$/) do
  page.should have_content("New Force Request")
  page.should have_content("Your Profile")
  page.should have_content("Change Your Password")
end

And (/^I should see update success$/) do
  page.should have_content("The change has been applied")
end


When (/^I fill out the UIN worng$/) do
    fill_in('UIN', :with => "000000000")
end

When (/^I fill out the email worng$/) do
    fill_in('Email', :with => "Will@tamu.edu")
end

Then (/^I should see error message for same UIN$/) do 
    page.should have_content("The new UIN has already been taken.")
end

Then (/^I should see error message for same email$/) do 
    page.should have_content("The new email has already been taken.")
end

############################################################################################################
#new force request
############################################################################################################


When(/^I click on New Force Request$/) do
  click_link('New Force Request')
end


And(/^I complete the form$/) do
  @student_request = {:minor=>"None", :expected_graduation=>"2021 Fall", :request_semester=>"2020 Fall", :course_id=>"629", :section_id => "600"}
#   page.has_content?("123123123")
  select(@student_request[:expected_graduation], from:'Expected Graduation*')
  select(@student_request[:request_semester], from:'request_semester')
  #select(@student_request[:course_id], from:'course_id')
  #select(@student_request[:section_id], from:'section_id')
  
  fill_in('course_id', :with => @student_request[:course_id])
  fill_in('section_id', :with => @student_request[:section_id])
  
end

And(/^I complete the form the second time$/) do
  @student_request = {:minor=>"None", :expected_graduation=>"2021 Fall", :request_semester=>"2020 Fall", :course_id=>"606", :section_id => "600"}
  page.has_content?("123123123")
  select(@student_request[:expected_graduation], from:'Expected Graduation*')
  select(@student_request[:request_semester], from:'Request Semester*')
  select(@student_request[:course_id], from:'Course Id* (CSCE)')
  select(@student_request[:section_id], from:'Section Id(s)*')
  # fill_in('Course Id*', :with => @student_request[:course_id])
  # fill_in('Section Id(s)*', :with => @student_request[:section_id]) 
end

And(/^I complete the form the third time$/) do
  @student_request = {:minor=>"None", :expected_graduation=>"2021 Fall", :request_semester=>"2020 Fall", :course_id=>"629", :section_id => "601"}
  page.has_content?("123123123")
  select(@student_request[:expected_graduation], from:'Expected Graduation*')
  select(@student_request[:request_semester], from:'Request Semester*')
  select(@student_request[:course_id], from:'Course Id* (CSCE)')
  select(@student_request[:section_id], from:'Section Id(s)*')
  # fill_in('Course Id*', :with => @student_request[:course_id])
  # fill_in('Section Id(s)*', :with => @student_request[:section_id]) 
end

And(/^I complete the form the fourth time$/) do
  @student_request = {:minor=>"None", :expected_graduation=>"2021 Fall", :request_semester=>"2020 Fall", :course_id=>"629", :section_id => "600"}
  page.has_content?("123123123")
  select(@student_request[:expected_graduation], from:'Expected Graduation*')
  select(@student_request[:request_semester], from:'Request Semester*')
  select(@student_request[:course_id], from:'Course Id* (CSCE)')
  select(@student_request[:section_id], from:'Section Id(s)*')
  # fill_in('Course Id*', :with => @student_request[:course_id])
  # fill_in('Section Id(s)*', :with => @student_request[:section_id]) 
end

And(/^I click Save Request$/) do
  click_button('Save')
#   click_link('Save')
end

Then(/^I should see a confirm message$/) do
  page.should have_content("Student Request was successfully created.")
  page.should have_content("629")
  page.should have_content("600")
end

Then(/^I should see a confirm message for second request$/) do
  page.should have_content("Student Request was successfully created.")
  page.should have_content("629")
  page.should have_content("600")
  page.should have_content("606")
  page.should have_content("600")
end

Then(/^I should see a confirm message for third request$/) do
  page.should have_content("Student Request was successfully created.")
  page.should have_content("629")
  page.should have_content("600")
  page.should have_content("606")
  page.should have_content("600")
  page.should have_content("629")
  page.should have_content("601")
end


Then(/^I should see a error message for maximum limit$/) do
  page.should have_content("Maximum limit of force request reached")
end

When(/^I click on Delete$/) do
  click_button('Delete')
end

Then(/^I should not see that request on Student Dashboard Page$/) do
  page.has_content?("Student Request was successfully deleted")
end


############################################################################################################
#change password
############################################################################################################

And(/^I click change password button$/) do
  click_link('Change Your Password')
end

Then(/^I should be on change password page$/) do
  page.should have_content("Change Your Password")
  page.should have_content("Enter your old password") 
end


Then (/^I should read a successful message$/) do
  page.should have_content("Your password has been changed!") 
end


When(/^I fill the old password wrongly$/) do
  @user_info = {:old => "qwe",  :new => "qwe"}
  fill_in('Enter your old password', :with => @user_info[:old])
  fill_in('Enter your new password', :with => @user_info[:new])
  fill_in('session[password2]', :with => @user_info[:new])
  click_button('Confirm')
end
  
Then(/^I stay on the page on recieve warining$/) do
  page.has_content?("The old password you enter is wrong!")
end

When(/^I fill the form and confirm$/) do
  @user_info = {:old => "CSCE606Spring2020",  :new => "qwerty"}
  fill_in('Enter your old password', :with => @user_info[:old])
  fill_in('Enter your new password', :with => @user_info[:new])
  fill_in('session[password2]', :with => @user_info[:new])
  click_button('Confirm')
end


When(/^I fill the new password wrongly$/) do
  @user_info = {:old => "151718",  :new => "qwerty"}
  fill_in('Enter your old password', :with => @user_info[:old])
  fill_in('Enter your new password', :with => @user_info[:new])
  fill_in('session[password2]', :with => 'xxx')  
  click_button('Confirm')
end
  
Then(/^I stay on the page on recieve another warining$/) do
  page.has_content?("The twice entered new password must be same!")
end

When(/^I withdraw this request$/) do
  click_button('Cancel')
end

Then(/^I will back to student dashboard$/) do
  page.should have_content("View Your Profile")
end




############################################################################################################
#log out
############################################################################################################
And(/^I click logout button$/) do
  click_button('Logout')
end


Then(/^I should be on root page$/) do
  page.has_content?("Login Page")
end
  
  
############################################################################################################
#forget password
############################################################################################################

  
  
And(/^I click forget password$/) do
  click_link('forget_password')
end

Then(/^I should be on reset password page$/) do
  page.has_content?("Reset Your Password")
end

When(/^I input my Email and click reset$/) do
  fill_in('Enter your Email', :with => 'Will@tamu.edu')
  click_button('Reset')
end

Then (/^I should see a message$/) do
  page.has_content?("Please check your tamu email to reset your password!")
end


################################################################################################################
#Priority
################################################################################################################


And(/^I assign priority to the request$/) do
  @student_request = {:minor=>"None", :expected_graduation=>"2021 Fall", :request_semester=>"2020 Fall", :course_id=>"606", :section_id => "600" , :priority => "High"}
  page.should has_content?("Making New Request")
  select(@student_request[:expected_graduation], from:'Expected Graduation*')
  select(@student_request[:request_semester], from:'Request Semester*')
  
  # select(@student_request[:course_id], from:'Course Id* (CSCE)')
  
  fill_in('Course Id* (CSCE)', :with => @student_request[:course_id])
  # select(@student_request[:section_id], from:'Section Id(s)*')
  fill_in('Section Id(s)*', :with => @student_request[:section_id]) 
  select(@student_request[:priority], from:'Priority*')
end

Then(/^I should see the request with priority$/) do
  page.should have_content("Student Request was successfully created.")
  page.should have_content("High")
end

When(/^I click on Edit$/) do
  click_button('Edit')
end

And(/^I edit the request$/) do
  @student_request = {:minor=>"None", :expected_graduation=>"2020 Fall", :request_semester=>"2020 Fall", :course_id=>"629", :section_id => "600", :priority => "Normal"}
  page.has_content?("123123123")
  #select(@student_request[:expected_graduation], from:'Expected Graduation*')
  #select(@student_request[:priority], from:'Priority*')
  fill_in('Notes', :with => 'I need this for graduation')
end

Then(/^I should see a confirmation message$/) do
  page.should have_content("Course was successfully edited")
end

Then (/^I should be on edit request page$/) do
  page.should have_content("Edit Force Request")
end