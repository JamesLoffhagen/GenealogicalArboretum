class Parent < ApplicationRecord
  belongs_to :individual, class_name: 'Individual'
  belongs_to :parent, class_name: 'Individual'
  belongs_to :parent_type, class_name: 'ParentType'
end
