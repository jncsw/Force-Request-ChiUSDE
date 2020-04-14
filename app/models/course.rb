class Course < ApplicationRecord
    validates :course_id, presence: true
    validates :course_name, presence: true
    validates :section_id, presence: true
    validates :isValid, presence: true
end
