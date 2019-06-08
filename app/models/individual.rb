class Individual < ApplicationRecord
  has_many :children, class_name: 'Parent', foreign_key: 'parent'
  has_many :parents, class_name: 'Parent', foreign_key: 'individual'
  has_many :education, class_name: 'Education', foreign_key: 'individual'
end
