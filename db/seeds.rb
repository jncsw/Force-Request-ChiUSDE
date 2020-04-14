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


majors = [  
{:major_id => 'None'},
{:major_id => 'ACCT'},
{:major_id => 'AERO'},
{:major_id => 'AGBU'},
{:major_id => 'AGCJ'},
{:major_id => 'AGEC'},
{:major_id => 'ALED'},
{:major_id => 'AGSC'},
{:major_id => 'AGSM'},
{:major_id => 'ANSC'},
{:major_id => 'ANTH'},
{:major_id => 'APMS'},
{:major_id => 'BICH'},
{:major_id => 'BESC'},
{:major_id => 'BAEN'},
{:major_id => 'BIOL'},
{:major_id => 'BMEN'},
{:major_id => 'BIMS'},
{:major_id => 'BUSN'},
{:major_id => 'CHEN'},
{:major_id => 'CHEM'},
{:major_id => 'CVEN'},
{:major_id => 'CLSS'},
{:major_id => 'COMM'},
{:major_id => 'CHLT'},
{:major_id => 'CECN'},
{:major_id => 'CEEN'},
{:major_id => 'CPSC'},
{:major_id => 'COMP'},
{:major_id => 'COSC'},
{:major_id => 'ECOR'},
{:major_id => 'ECON'}, 
{:major_id => 'ELEN'},
{:major_id => 'ESET'},
{:major_id => 'ENGL'},
{:major_id => 'ENTO'},
{:major_id => 'EDAS'},
{:major_id => 'ENGS'},
{:major_id => 'ENST'},
{:major_id => 'FINC'},
{:major_id => 'FSTC'},      
{:major_id => 'FSIM'},      
{:major_id => 'FIVS'},      
{:major_id => 'FORS'},      
{:major_id => 'GEST'},      
{:major_id => 'GENE'},      
{:major_id => 'GIST'},
{:major_id => 'GEOG'},        
{:major_id => 'GEOL'},        
{:major_id => 'GEOP'},        
{:major_id => 'HLTH'},        
{:major_id => 'HIST'},         
{:major_id => 'HORT'}, 
{:major_id => 'HRDV'}, 
{:major_id => 'IDIS'},        
{:major_id => 'INEN'},         
{:major_id => 'ITDE'},      
{:major_id => 'INST'},        
{:major_id => 'SPED'},     
{:major_id => 'INTS'},        
{:major_id => 'KINE'},      
{:major_id => 'KINE'},       
{:major_id => 'KINE'},       
{:major_id => 'LAND'},       
{:major_id => 'MGMT'},          
{:major_id => 'MISY'},      
{:major_id => 'MMET'},      
{:major_id => 'MARB'},       
{:major_id => 'MARE'},     
{:major_id => 'MARF'},      
{:major_id => 'MARS'},       
{:major_id => 'MART'},     
{:major_id => 'MARA'},       
{:major_id => 'MAST'},        
{:major_id => 'MKTG'},          
{:major_id => 'MSEN'},         
{:major_id => 'MATH'},          
{:major_id => 'MEEN'},         
{:major_id => 'METR'},          
{:major_id => 'MBIO'},            
{:major_id => 'MODL'},
{:major_id => 'BMCB'},
{:major_id => 'MXET'},
{:major_id => 'NUEN'},
{:major_id => 'NURS'},          
{:major_id => 'NUSC'},
{:major_id => 'OCRE'},
{:major_id => 'OCEN'},
{:major_id => 'OCNG'}, 
{:major_id => 'PERF'},
{:major_id => 'PETE'},
{:major_id => 'PHIL'},          
{:major_id => 'PHYS'},          
{:major_id => 'PSSC'},
{:major_id => 'POLS'},
{:major_id => 'POSC'},
{:major_id => 'PSYC'},           
{:major_id => 'PHLT'},
{:major_id => 'RLEM'},
{:major_id => 'RPTS'},
{:major_id => 'RENR'},
{:major_id => 'SOCI'},           
{:major_id => 'SPAN'},           
{:major_id => 'SPSA'},
{:major_id => 'SPMT'},
{:major_id => 'STAT'},           
{:major_id => 'SCMT'},
{:major_id => 'TCMG'},
{:major_id => 'TCMS'},
{:major_id => 'TGSC'},        
{:major_id => 'USVM'}, 
{:major_id => 'USGE'}, 
{:major_id => 'USAR'}, 
{:major_id => 'MELP'},      
{:major_id => 'MPPC'},
{:major_id => 'USSC'},
{:major_id => 'USGE'},   
{:major_id => 'USLA'},   
{:major_id => 'USEH'}, 
{:major_id => 'TCCD'},  
{:major_id => 'URPN'},   
{:major_id => 'VIST'},  
{:major_id => 'WFSC'}, 
{:major_id => 'WGST'},      
{:major_id => 'ZOOL'},
{:major_id => 'Others'}               
            ]
            
admins = [{:uin => '123456789', :name => 'admin', :password => 'f7e59c09e1d415108b97139ba3306e77', :email => '123456789@tamu.edu'}, # tamu2020
          {:uin => '987654321', :name => 'admin2', :password => 'f7e59c09e1d415108b97139ba3306e77', :email => '123456780@tamu.edu'}]


limits = [{:classification => 'G7', "Very High".to_sym => '99', :High => '99', :Normal => '99', :Low => '99', "Very Low".to_sym => '99'}, 
          {:classification => 'U1', "Very High".to_sym => '99', :High => '99', :Normal => '99', :Low => '99', "Very Low".to_sym => '99'},
          {:classification => 'U2', "Very High".to_sym => '99', :High => '99', :Normal => '99', :Low => '99', "Very Low".to_sym => '99'},
          {:classification => 'U3', "Very High".to_sym => '99', :High => '99', :Normal => '99', :Low => '99', "Very Low".to_sym => '99'},
          {:classification => 'U4', "Very High".to_sym => '99', :High => '99', :Normal => '99', :Low => '99', "Very Low".to_sym => '99'},
          {:classification => 'U5', "Very High".to_sym => '99', :High => '99', :Normal => '99', :Low => '99', "Very Low".to_sym => '99'},
          {:classification => 'G8', "Very High".to_sym => '99', :High => '99', :Normal => '99', :Low => '99', "Very Low".to_sym => '99'}]

students = [{:uin => "126003824", :password => "123123", :major => "CEEN", :classification => "G7-Graduate, Master's Level", :name => "Mo Li", :email => "king_lm@tamu.edu"},
            {uin: "123123123", password: "321", major: "CEEN", classification: "G8", name: "Mian Qin", email: "celery1124@tamu.edu"},
            {uin: "222111333", password: "zxc", major: "CEEN", classification: "G7", name: "Jiechen Zhong", email: "chen0209app@tamu.edu", email_confirmed: true},
            {uin: "988555444", password: "f7e59c09e1d415108b97139ba3306e77", major: "CECN", classification: "G7", lastname: "Zou", firstname: "Lianghao",
            name: "Lianghao Zou", email: "frankzoulh3@tamu.edu", email_confirmed: true, isVerified: true},
            {uin: "123456789", password: "11f23810ba7387df0f276ddf4552b315", major: "Computer Science - CSCE", classification: "G7", name: "CSCE Spring", lastname: "Spring", firstname: "CSCE", email: "CSCE606Spring2020@tamu.edu", email_confirmed: true, isVerified: true}
            
            ]
            
courses = [{:course_id => "606", :course_name => "Software Engineering", :section_id => "600", :isValid =>"1"},
           {:course_id => "629", :course_name => "Analysis of Algorithm", :section_id => "600", :isValid =>"1"},
           {:course_id => "629", :course_name => "Analysis of Algorithm", :section_id => "601", :isValid =>"1"},
           {:course_id => "710", :course_name => "123", :section_id => "123", :isValid =>"1"},
           ]

courses.each do |course|
   Course.create!(course)
end 

limits.each do |limit|
   Limit.create!(limit)
end

students.each do |student|
   Student.create!(student) 
   puts student 
end

student_requests.each do |record|
  StudentRequest.create!(record)
end

majors.each do |record|
  Major.create!(record)
end

admins.each do |record|
  Admin.create!(record)
end