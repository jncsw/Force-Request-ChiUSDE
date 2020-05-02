And /^I click Download button$/ do
    click_link('Download Force Request System data (.csv)')
end   

And /^I click Download logs button$/ do
    click_link('Download Force Request System Logs data (.csv)')
end  
    
Then /^I should get a download with the All_force_requests.csv$/ do 
    page.response_headers['Content-Disposition'].should include("filename=\"#{"All_force_requests.csv"}\"")
end

Then /^I should get a download with the All_request_logs.csv$/ do 
    page.response_headers['Content-Disposition'].should include("filename=\"#{"All_request_logs.csv"}\"")
end

# Wenxuan New test
When(/^I click MoreActions$/) do
    page.should have_content("More Actions")
    click_link('More Actions')
end

When(/^I click UpdateCourses$/) do
    page.should have_content("Update Courses")
    click_link('Update Courses')
end

When(/^I click UploadFile/) do
    page.should have_content("Select a CSV File")
    page.should have_content("Upload as")
    page.should have_content("Override")
    page.should have_content("Append")
    
    #choose('Append')
    #find('file_field').click
end