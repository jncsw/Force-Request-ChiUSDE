class Course < ApplicationRecord
    validates :course_id, presence: true
    validates :course_name, presence: true
    validates :section_id, presence: true
    validates :isValid, presence: true
    
    
    
    def self.import(file)
        courseNum = 0
        error = 0
        CSV.foreach(file.path, headers: true) do |row|
            courseNum = courseNum + 1
            newCourse = Course.new
            newCourse.course_id = row[0]
            newCourse.course_name = row[2]
            newCourse.section_id = row[1]
            newCourse.semester = row[3]
            newCourse.isValid = '1'
            newCourse.save
        end
        return courseNum
    end
    
    
end
