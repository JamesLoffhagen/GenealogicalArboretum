class Occupation < ApplicationRecord
  belongs_to :individual, class_name: 'Individual'
  belongs_to :occupation_type, class_name: 'OccupationType'
end
