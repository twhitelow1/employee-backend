class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  validates :username, presence: true, uniqueness: true
  has_many :shifts
  has_many :positions, through: :employee_position_outlets
  has_many :outlets, through: :employee_position_outlets
  has_one :user_type
end
