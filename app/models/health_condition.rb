class HealthCondition < ApplicationRecord
  belongs_to :individual, class_name: 'Individual'
  belongs_to :health_condition_type, class_name: 'HealthConditionType'
end
