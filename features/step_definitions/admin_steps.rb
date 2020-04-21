Given(/^I am on the Login Page as admin$/) do
  visit('/')
  # fill_in('Enter your Name', :with => "1234312")
  # click_button('Sign Up')
  # majors = [{:major_id => 'CPSC'}, {:major_id => 'CECN'}, {:major_id => 'CEEN'}, {:major_id => 'ELEN'}, {:major_id => 'APMS'},
  #           {:major_id => 'CPSL'}, {:major_id => 'CECL'}, {:major_id => 'CEEL'}, {:major_id => 'Others'}]
  # existingMajors = Major.all
  # if existingMajors.blank?
  #   majors.each do |record|
  #     Major.create!(record)
  #   end
  # end
  
  page.should have_content("Login Page")
end

And(/^I use admin account to login$/) do
  choose('session_user_admin')
  @user_info = {:UIN => "123456789@tamu.edu",  :password => "tamu2017"}
  fill_in('Enter your Email', :with => @user_info[:UIN])
  fill_in('Enter your password', :with => @user_info[:password])
  click_button('Login')
end

Then(/^I should be on Admin View page$/) do
    page.should have_content("Admin Dashboard Page")
    page.should have_content("Howdy! Welcome back admin")
end
    
    
And(/^I should see all requests here$/) do
    page.should have_content("Mo Li")
    page.should have_content("More Actions")
end


When(/^I click More Actions$/) do
    page.should have_content("More Actions")
    click_link('More Actions')
end
    
Then(/^I should go to action page$/) do
     page.should have_content("Add New Force Admin")
     page.should have_content("Add New Force Request")  
     page.should have_content("Add New Student")
     page.should have_content("Set Force Request Limit")
     page.should have_content("Edit Email Template")  
end

When(/^I add a new admin$/) do
    click_link('Add New Force Admin')
end

And(/^I fill the info of new admin$/) do
    page.should have_content("Uin of new admin")  
    @user_info = {:UIN => "111222333", :name => "walker",  :password => "qwe"}
    fill_in('admin_request_uin', :with => @user_info[:UIN])
    fill_in('admin_request_name', :with => @user_info[:name])
    fill_in('admin_request_password', :with => @user_info[:password])
    click_button('Confirm')
end

Then(/^I should back to admin dashboard$/) do
    page.should have_content("Admin Dashboard Page")
end


When(/^I click add a new student$/) do
    click_link('Add New Student')
end

And(/^I fill the info of new student$/) do
    page.should have_content("lassification of student (U1,U3,G7,G8,etc):") 
    @user_info = {:UIN => "777888999", :name => "Xiaoer Wang",  :email => "adb3649@tamu.edu", :major => 'CEEL', :classification => 'U1'}
    fill_in('session_name', :with => @user_info[:name])
    fill_in('session_uin', :with => @user_info[:UIN])
    fill_in('session_uin2', :with => @user_info[:UIN])
    fill_in('session_email', :with => @user_info[:email])
    # select(@user_info[:major], from:'session_major')
    # select(@user_info[:classification], from:'session_classification')
    click_button('Confirm')
end

When(/^I click add a new force request to system$/) do
    click_link('Add New Force Request')
end

And(/^I fill the info of new request$/) do
    @user_info = {:UIN => "777888999", :expected_graduation => "2019 Fall",  :request_semester => "2019 Fall", :course_id => '314', :section_id => '100'}
    fill_in('UIN of student*', :with => @user_info[:UIN])
    select(@user_info[:expected_graduation], from:'Expected Graduation*')
    select(@user_info[:request_semester], from:'Request Semester*')
    fill_in('Course Id*', :with => @user_info[:course_id])
    fill_in('Section Id*', :with => @user_info[:section_id])
    
    click_button('Confirm')
end


 
When(/^I click archive all and see a pop window and click ok$/) do
    pop_window = window_opened_by do
        click_link('Archive All Force Request Data to Archival Database')
    end
    within_window pop_window do
      click_button 'OK'
    end
end


When(/^I filter the requests$/) do
    check('state_sel_Rejected')
    check('state_sel_Approved')
    within('div[class = filter_form1]')  do 
        click_button('Refresh')
    end
end



Then(/^I have the requests in desired domain$/) do
    page.should have_content("Admin Dashboard Page")
end

When(/^I click course name button$/) do
    click_button('CSCE 026')
end

Then(/^the page collapse$/) do
    page.has_content?(' FRS44fe477f6025c48c6fb9')
end


When (/^I click Approve$/) do
    page.first(:link, 'Approve').click
end

Then (/^I should see Approved$/) do
    page.should have_content("Approved")
end

When (/^I click Reject$/) do
    page.first(:link, 'Reject').click
end

Then (/^I should see Rejected/) do
    page.should have_content("Rejected")
end

When (/^I click Hold/) do
    page.first(:link, 'Hold').click
end

Then (/^I should see Hold/) do
    page.should have_content("Hold")
end

When (/^I click View Details/) do
    page.first('View Details').click
end

Then (/^I should see Request Id Details/) do
    page.should have_content("Request Id Details")
end

And (/^I click first Update Selected/) do
    page.first(:button, 'Update Selected').click
end

Then (/^I should see Nothing has been selected for Update/) do
    page.should have_content("Nothing has been selected for Update")
end

Then (/^I should be on the custom message page/) do
    page.should have_content("Compose Message")
end

And (/^I type in a custom message/) do
    fill_in('Enter message here', :with => "Good Luck!")
    click_button('Confirm')
end

Then (/^I click Set Force Request Limit$/) do
    click_link('Set Force Request Limit')
end

And (/^I enter the limits/) do
    fill_in('Very High', :with => "5")
    fill_in('High', :with => "5")
    fill_in('Normal', :with => "5")
    fill_in('Low', :with => "5")
    fill_in('Very Low', :with => "5")
    click_button('Submit')
end

Then (/^I should see limits were set$/) do
    page.should have_content("Limits were successfully set")
end

Then (/^I should be on the set limits page/) do
    page.should have_content("Set limit for requests")
end

Then (/^I click Edit Email Template$/) do
    click_link('Edit Email Template')
end

Then (/^I should be on the email template page/) do
    page.should have_content("Edit email template")
end

And (/^I should see template message/) do
    fill_in 'Enter message here', :with => "./app/views/student_mailer/email_template.text.erb"
    page.should have_content(:all, "CSCE Academic Advising Team")
end

And (/^I edit the template/) do
    #fill_in('Edit email template', :with => "Good Luck!")
    click_button('Submit')
end

Then (/^I should see that the template was updated$/) do
    page.should have_content("Email template was successfully updated")
end