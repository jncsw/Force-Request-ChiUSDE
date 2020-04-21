class StudentRequest < ActiveRecord::Base
  audited
  # States of the students 
    ACTIVE_STATE = "Active"
    WITHDRAWN_STATE = "Withdraw"
    REJECTED_STATE = "Rejected"
    HOLD_STATE = "Hold"
    APPROVED_STATE = "Approved"
    
    # Priority of the Students
    VERYHIGH_PRIORITY = "Very High"
    HIGH_PRIORITY = "High"
    NORMAL_PRIORITY = "Normal"
    LOW_PRIORITY = "Low"
    VERYLOW_PRIORITY = "Very Low"
    
    # ------------- fall 2019 --------------
    COURSE_KEY_1 = "629"
    COURSE_KEY_2 = "606"
    COURSE_KEY_3 = "605"
    COURSE_KEY_4 = "604"
    COURSE_KEY_5 = "603"
    COURSE_KEY_6 = "602"
    COURSE_KEY_7 = "601"
    COURSE_KEY_8 = "608"
    COURSE_KEY_9 = "611"
    COURSE_KEY_10 = "612"
    COURSE_KEY_11 = "614"
    COURSE_KEY_12 = "616"
    COURSE_KEY_13 = "625"
    COURSE_KEY_14 = "633"
    COURSE_KEY_15 = "636"
    COURSE_KEY_16 = "637"
    COURSE_KEY_17 = "641"
    COURSE_KEY_18 = "645"
    COURSE_KEY_19 = "679"
    COURSE_KEY_20 = "681"
    COURSE_KEY_21 = "702"
    COURSE_KEY_22 = "706"
    COURSE_KEY_23 = "708"
    COURSE_KEY_24 = "709"
    COURSE_KEY_25 = "735"
    COURSE_KEY_26 = "702"

    
    SESSION_ID_1 = "600"
    SESSION_ID_2 = "601"
    SESSION_ID_3 = "602"
    SESSION_ID_4 = "603"
    SESSION_ID_5 = "604"
    SESSION_ID_6 = "605"
    SESSION_ID_7 = "606"
    SESSION_ID_8 = "607"
    SESSION_ID_9 = "608"
    SESSION_ID_10 = "609"
    SESSION_ID_11 = "613"
    SESSION_ID_12 = "614"
    SESSION_ID_13 = "615"
    SESSION_ID_14 = "616"
    SESSION_ID_15 = "618"
    SESSION_ID_16 = "620"
    SESSION_ID_17 = "700"
    SESSION_ID_18 = "550"
    SESSION_ID_19 = "570"
    SESSION_ID_20 = "576"
    SESSION_ID_21 = "550"



    


    #---------------------------------------
    
    Time.zone = 'Central Time (US & Canada)'
    time = Time.zone.now()
        # List Year and Semester
    CURRENT_YEAR = time.strftime("%Y")
    current_year = CURRENT_YEAR.to_i
    CURRENT_MONTH = time.strftime("%m")
    current_month = CURRENT_MONTH.to_i
    next_year = current_year +1;
    
    
    SPRING = current_year.to_s + " Spring"
    FALL = current_year.to_s + " Fall"
    SUMMER = current_year.to_s + " Summer"
    NSPRING = next_year.to_s + " Spring"
    NFALL = next_year.to_s + " Fall"
    NSUMMER = next_year.to_s + " Summer"
    
    
    STATES_AVAILABLE_TO_ADMIN = [StudentRequest::APPROVED_STATE, StudentRequest::REJECTED_STATE, StudentRequest::HOLD_STATE]
    PRIORITY_LIST = [StudentRequest::VERYHIGH_PRIORITY, StudentRequest::HIGH_PRIORITY, StudentRequest::NORMAL_PRIORITY, StudentRequest::LOW_PRIORITY, StudentRequest::VERYLOW_PRIORITY]
    SEMESTER_LIST = [StudentRequest::NSPRING, StudentRequest::NFALL, StudentRequest::NSUMMER,StudentRequest::SPRING, StudentRequest::FALL, StudentRequest::SUMMER]
    
    # ------------- fall 2019 --------------
    COURSE_LIST = [StudentRequest::COURSE_KEY_1,COURSE_KEY_2,COURSE_KEY_3,COURSE_KEY_4,COURSE_KEY_5,
                  COURSE_KEY_6, COURSE_KEY_7, COURSE_KEY_8,COURSE_KEY_9,COURSE_KEY_10,COURSE_KEY_11,COURSE_KEY_12,COURSE_KEY_13,
                  COURSE_KEY_14,COURSE_KEY_15,COURSE_KEY_16,COURSE_KEY_17,COURSE_KEY_18,COURSE_KEY_19,COURSE_KEY_20,COURSE_KEY_21,
                  COURSE_KEY_22,COURSE_KEY_23,COURSE_KEY_24,COURSE_KEY_25,COURSE_KEY_26]
    # SESSION_LIST_629 = [SESSION_ID_629_1,SESSION_ID_629_2]
    SESSION_LIST = [SESSION_ID_1, SESSION_ID_2,SESSION_ID_3,SESSION_ID_4,SESSION_ID_5,SESSION_ID_6,SESSION_ID_7,SESSION_ID_8,SESSION_ID_9, 
                   SESSION_ID_10,SESSION_ID_11,SESSION_ID_12,SESSION_ID_13,SESSION_ID_14,SESSION_ID_15,SESSION_ID_16,SESSION_ID_17,SESSION_ID_18,SESSION_ID_19,SESSION_ID_20,SESSION_ID_21]
    # ------------- fall 2019 --------------
    
    #Classification
    CLASSIFICATION_LIST = ['U1', 'U2', 'U3', 'U4', 'U5', 'G7', 'G8']
    MAJOR_LIST = [      
'None',
'ACCT',
'AERO',
'AGBU',
'AGCJ',
'AGEC',
'ALED',
'AGSC',
'AGSM',
'ANSC',
'ANTH',
'APMS',
'BICH',
'BESC',
'BAEN',
'BIOL',
'BMEN',
'BIMS',
'BUSN',
'CHEN',
'CHEM',
'CVEN',
'CLSS',
'COMM',
'CHLT',
'CECN',
'CEEN',
'CPSC',
'COMP',
'COSC',
'ECOR',
'ECON', 
'ELEN',
'ESET',
'ENGL',
'ENTO',
'EDAS',
'ENGS',
'ENST',
'FINC',
'FSTC',      
'FSIM',      
'FIVS',      
'FORS',      
'GEST',      
'GENE',      
'GIST',
'GEOG',        
'GEOL',        
'GEOP',        
'HLTH',        
'HIST',         
'HORT', 
'HRDV', 
'IDIS',        
'INEN',         
'ITDE',      
'INST',        
'SPED',     
'INTS',        
'KINE',      
'KINE',       
'KINE',       
'LAND',       
'MGMT',          
'MISY',      
'MMET',      
'MARB',       
'MARE',     
'MARF',      
'MARS',       
'MART',     
'MARA',       
'MAST',        
'MKTG',          
'MSEN',         
'MATH',          
'MEEN',         
'METR',          
'MBIO',            
'MODL',
'BMCB',
'MXET',
'NUEN',
'NURS',          
'NUSC',
'OCRE',
'OCEN',
'OCNG', 
'PERF',
'PETE',
'PHIL',          
'PHYS',          
'PSSC',
'POLS',
'POSC',
'PSYC',           
'PHLT',
'RLEM',
'RPTS',
'RENR',
'SOCI',           
'SPAN',           
'SPSA',
'SPMT',
'STAT',           
'SCMT',
'TCMG',
'TCMS',
'TGSC',        
'USVM', 
'USGE', 
'USAR', 
'MELP',      
'MPPC',
'USSC',
'USGE',   
'USLA',   
'USEH', 
'TCCD',  
'URPN',   
'VIST',  
'WFSC', 
'WGST',      
'ZOOL',
'Others'
    ]
    # time = Time.new

    

    
    LIST_YEAR = []
    for i in current_year..current_year+100
      LIST_YEAR << i.to_s
    end
    
    LIST_SEMESTER = ['Spring', 'Fall', 'Summer']
    
    YEAR_SEMESTER = []
    LIST_YEAR.each do |year|
      LIST_SEMESTER.each do |semester|
        if year.to_i == current_year and current_month <= 4
          YEAR_SEMESTER << year + " " + semester
        elsif year.to_i == current_year and current_month <= 8 and semester != "Spring"
          YEAR_SEMESTER << year + " " + semester
        elsif semester == "Fall"
          YEAR_SEMESTER << year + " " + semester
        elsif year.to_i != current_year
          YEAR_SEMESTER << year + " " + semester
        end
      end
    end
    
    REQUEST_SEMESTER = []
    for i in current_year..current_year+1
      LIST_SEMESTER.each do |semester|
        if i == current_year and current_month <= 4
          REQUEST_SEMESTER << i.to_s + " " + semester
        elsif i == current_year and current_month <= 8 and semester != "Spring"
          REQUEST_SEMESTER << i.to_s + " " + semester
        elsif semester == "Fall"
          REQUEST_SEMESTER << i.to_s + " " + semester
        elsif i != current_year
          REQUEST_SEMESTER << i.to_s + " " + semester
        end
      end
    end
    
    self.primary_key = "request_id"
    validates :uin, presence: true
    validates :name, presence: true
    validates_format_of :name, :with => /^[^0-9`!@#\$%\^&*+_=]+$/, :multiline => true
    validates :major, presence: true
    validates :classification, presence: true
    validates :email, presence: true
    validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
    validates :request_semester, presence: true
    validates :course_id, presence: true
    validates_format_of :course_id, :with => /^\d+$/, :multiline => true
    
    validates_format_of :section_id, :with => /^\d*$/, :multiline => true
    
    # validates_format_of :phone, :with => /1?\s*\W?\s*([2-9][0-8][0-9])\s*\W?\s*([2-9][0-9]{2})\s*\W?\s*([0-9]{4})(\se?x?t?(\d*))?/
    #validates :classification, inclusion: { in: CLASSIFICATION_LIST, 
    #  message: "%{value} is not a valid classification" }
    validates :request_semester, inclusion: { in: YEAR_SEMESTER, 
      message: "%{value} is not a valid request semester" }
    validates :priority, inclusion: {in: PRIORITY_LIST,
      message: "%{value} is not a valid prioroty"}
      
    # attr_encrypted :course_id, key: ENV['COURSE_KEY'].truncate(32)
    # attr_encrypted :section_id, key: ENV['SECTION_KEY'].truncate(32)
    
    before_create :create_request_id
    before_save :update_time
    
    before_create :set_creation_date
  
    def set_creation_date
      # self.creation_date = DateTime.now()
      Time.zone = 'Central Time (US & Canada)'
      self.creation_date = Time.zone.now()
    end

    def update_time
      # self.last_updated = DateTime.now()
      Time.zone = 'Central Time (US & Canada)'
      self.last_updated = Time.zone.now()
    end
    
    def create_request_id
      begin
        self. request_id = "FRS" + SecureRandom.hex(10)
      end while self.class.exists?(:request_id => request_id)
    end
    
    def self.to_csv(state_selected, request_semester_selected, options = {})
      @state_selected = state_selected
      @request_semester_selected = request_semester_selected
      CSV.generate(options) do |csv|
        csv << column_names
        all.each do |student_request|
          next if student_request.state == StudentRequest::WITHDRAWN_STATE
          next if @state_selected[student_request.state] == nil
          next if @request_semester_selected[student_request.request_semester] == nil
          #  student_request.encrypted_course_id = student_request.course_id
          #  student_request.encrypted_section_id = student_request.section_id
          #debugger
          csv << student_request.attributes.values_at(*column_names)
        end
      end
    end
end