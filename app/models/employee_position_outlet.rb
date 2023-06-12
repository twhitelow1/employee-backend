class EmployeePositionOutlet < ApplicationRecord
  belongs_to :outlet
  belongs_to :position
  belongs_to :user
end
