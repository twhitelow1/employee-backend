class Outlet < ApplicationRecord
  belongs_to :business
  has_many :employee_position_outlets
  has_many :positions, through: :employee_position_outlets
  has_many :users, through: :employee_position_outlets
  has_many :shifts
  
end
