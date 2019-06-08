class Education < ApplicationRecord
  belongs_to :individual, class_name: 'Individual'
  belongs_to :education_type, class_name: 'EducationType'
  belongs_to :education_field_type, class_name: 'EducationFieldType'
end
