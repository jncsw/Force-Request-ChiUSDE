# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


student_requests = [{:uin => '126003824', :name => 'Mo Li', 
                     :major => 'CEEN', :classification => 'G7', :minor => 'CECN', :email => 'king_lm@tamu.edu', :phone => '9797797697', 
                     :expected_graduation => '2021 Fall', :request_semester => '2020 Fall',
                     :course_id => '629', :section_id => '601', :notes => 'Requirement for graduation.',:priority => 'Very High' , :state => 'Active'},
                     {:uin => '126003824', :name => 'Mo Li', 
                      :major => 'CEEN', :classification => 'G7', :minor => 'CECN', :email => 'king_lm@tamu.edu', :phone => '9797769279', 
                      :expected_graduation => '2021 Fall', :request_semester => '2020 Fall',
                      :course_id => '629', :section_id => '601', :notes => 'I need this course as my summer intern will deal with this.',:priority => 'Very High' , :state => 'Active'},
                      {:uin => '126003824', :name => 'Mo Li', 
                      :major => 'CEEN', :classification => 'G7', :minor => 'CECN', :email => 'king_lm@tamu.edu', :phone => '9793477979', 
                      :expected_graduation => '2021 Fall', :request_semester => '2020 Fall',
                      :course_id => '606', :section_id => '600', :notes => 'My research advisor has recommended this course.' ,:priority => 'Very High', :state => 'Active'},
                      {:uin => '828282828', :name => 'Jane Doe', 
                     :major => 'CEEN', :classification => 'G7', :minor => 'CECN', :email => 'janedoe@tamu.edu', :phone => '9797797697', 
                     :expected_graduation => '2020 Fall', :request_semester => '2021 Fall',
                     :course_id => '606', :section_id => '600', :notes => 'Requirement for graduation.',:priority => 'Very High' , :state => 'Hold'},
                      {:uin => '222111333', :name => 'Jiechen Zhong', 
                      :major => 'CEEN', :classification => 'G8', :minor => 'MATH', :email => 'chen0209app@tamu.edu', :phone => '9797797900', 
                      :expected_graduation => '2021 Fall', :request_semester => '2020 Fall',
                      :course_id => '606', :section_id => '600', :notes => 'I am interested in CS600 as it is my field of research.' ,:priority => 'Very High', :state => 'Active'},
                      {:uin => '222111333', :name => 'Jiechen Zhong', 
                      :major => 'CEEN', :classification => 'G8', :minor => 'PHYS', :email => 'chen0209app@tamu.edu', :phone => '9797797900', 
                      :expected_graduation => '2021 Fall', :request_semester => '2020 Fall',
                      :course_id => '629', :section_id => '600', :notes => 'I need this subject to graduate.',:priority => 'Very High' , :state => 'Active'},
                  ]

# student_requests = [{:uin => '126003824', :name => 'Mo Li', 
#                      :major => 'Computer Engineering - CEEN', :classification => 'G7', :minor => 'CECN', :email => 'king_lm@tamu.edu', :phone => '9797797697', 
#                      :expected_graduation => '2021 Fall', :request_semester => '2020 Fall',
#                      :course_id => '026', :section_id => '101', :notes => 'Requirement for graduation.',:priority => 'Very High' , :state => 'Active'},
#                      {:uin => '126003824', :name => 'Mo Li', 
#                       :major => 'Computer Engineering - CEEN', :classification => 'G7', :minor => 'CECN', :email => 'king_lm@tamu.edu', :phone => '9797769279', 
#                       :expected_graduation => '2021 Fall', :request_semester => '2020 Fall',
#                       :course_id => '026', :section_id => '101', :notes => 'I need this course as my summer intern will deal with this.',:priority => 'Very High' , :state => 'Active'},
#                       {:uin => '126003824', :name => 'Mo Li', 
#                       :major => 'Computer Engineering - CEEN', :classification => 'G7', :minor => 'CECN', :email => 'king_lm@tamu.edu', :phone => '9793477979', 
#                       :expected_graduation => '2021 Fall', :request_semester => '2020 Fall',
#                       :course_id => '027', :section_id => '101', :notes => 'My research advisor has recommended this course.' ,:priority => 'Very High', :state => 'Active'},
                      
#                       {:uin => '222111333', :name => 'Jiechen Zhong', 
#                       :major => 'CEEN', :classification => 'G8', :minor => 'MATH', :email => 'chen0209app@tamu.edu', :phone => '9797797900', 
#                       :expected_graduation => '2021 Fall', :request_semester => '2020 Fall',
#                       :course_id => '026', :section_id => '101', :notes => 'I am interested in CS026 as it is my field of research.' ,:priority => 'Very High', :state => 'Active'},
#                       {:uin => '222111333', :name => 'Jiechen Zhong', 
#                       :major => 'CEEN', :classification => 'G8', :minor => 'PHYS', :email => 'chen0209app@tamu.edu', :phone => '9797797900', 
#                       :expected_graduation => '2021 Fall', :request_semester => '2020 Fall',
#                       :course_id => '028', :section_id => '101', :notes => 'I need this subject to graduate.',:priority => 'Very High' , :state => 'Active'}]
majors = [{:major_id => 'CPSC'}, {:major_id => 'CECN'}, {:major_id => 'CEEN'}, {:major_id => 'ELEN'}, {:major_id => 'APMS'},
            {:major_id => 'CPSL'}, {:major_id => 'CECL'}, {:major_id => 'CEEL'}, {:major_id => 'Others'}]
           
admins = [{:uin => '123456789', :name => 'admin', :password => 'f7e59c09e1d415108b97139ba3306e77', :email => '123456789@tamu.edu'}, # tamu2020
          {:uin => '987654321', :name => 'admin2', :password => 'f7e59c09e1d415108b97139ba3306e77', :email => '123456780@tamu.edu'}]


students = [{uin: "126003824", password: "123123", major: "Computer Engineering - CEEN", classification: "G7-Graduate, Master's Level", name: "Mo Li", email: "king_lm@tamu.edu"},
            {uin: "123123123", password: "321", major: "Computer Engineering - CEEN", classification: "G8-Graduate", name: "Mian Qin", email: "celery1124@tamu.edu"},
            {uin: "222111333", password: "zxc", major: "Computer Engineering - CEEN", classification: "G7-Graduate, Master's Level", name: "Jiechen Zhong", email: "chen0209app@tamu.edu"},
            {uin: "123456789", password: "11f23810ba7387df0f276ddf4552b315", major: "Computer Science - CSCE", classification: "G7", lastname: "Spring", firstname: "CSCE", name: "CSCE Spring", email: "CSCE606Spring2020@tamu.edu", email_confirmed: true, isVerified: true},
            {uin: "987654321", password: "e46bae03d631408623e02438b07e4822", major: "Computer Science - CSCE", classification: "G7", name: "CSCE606 Spring2020-1", email: "notActivate@tamu.edu"}
            ]  
            # CSCE606Spring2020

limits = [{:classification => 'G7', "Very High".to_sym => '99', :High => '99', :Normal => '99', :Low => '99', "Very Low".to_sym => '99'}, 
          {:classification => 'U1', "Very High".to_sym => '99', :High => '99', :Normal => '99', :Low => '99', "Very Low".to_sym => '99'},
          {:classification => 'U2', "Very High".to_sym => '99', :High => '99', :Normal => '99', :Low => '99', "Very Low".to_sym => '99'},
          {:classification => 'U3', "Very High".to_sym => '99', :High => '99', :Normal => '99', :Low => '99', "Very Low".to_sym => '99'},
          {:classification => 'U4', "Very High".to_sym => '99', :High => '99', :Normal => '99', :Low => '99', "Very Low".to_sym => '99'},
          {:classification => 'U5', "Very High".to_sym => '99', :High => '99', :Normal => '99', :Low => '99', "Very Low".to_sym => '99'},
          {:classification => 'G8', "Very High".to_sym => '99', :High => '99', :Normal => '99', :Low => '99', "Very Low".to_sym => '99'}]

courses = [{:course_id => "606", :course_name => "Software Engineering", :section_id => "600", :isValid => '1'},
          {:course_id => "629", :course_name => "Analysis of Algorithm", :section_id => "600", :isValid => '1'},
          {:course_id => "629", :course_name => "Analysis of Algorithm", :section_id => "601", :isValid => '1'},
          ]

courses.each do |course|
  Course.create!(course)
end 


# students = []
students.each do |student|
  Student.create!(student) 
end

student_requests.each do |requests|
    StudentRequest.create!(requests)
end

majors.each do |record|
  Major.create!(record)
end

admins.each do |record|
  Admin.create!(record)
end

