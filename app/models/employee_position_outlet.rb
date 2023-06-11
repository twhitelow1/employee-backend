class EmployeePositionOutlet < ApplicationRecord
  belongs_to :outlet
  belongs_to :position
  belongs_to :employee, class_name: 'User'
end
