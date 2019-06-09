class Individual < ApplicationRecord
  has_many :children, class_name: 'Parent', foreign_key: 'parent'
  has_many :parents, class_name: 'Parent', foreign_key: 'individual'
  has_many :education, class_name: 'Education', foreign_key: 'individual'
  has_many :health_conditions, class_name: 'HealthCondition', foreign_key: 'individual'
  has_many :occupation, class_name: 'Occupation', foreign_key: 'individual'
  has_many :individual_memory, class_name: 'IndividualMemory', foreign_key: 'individual'
end
