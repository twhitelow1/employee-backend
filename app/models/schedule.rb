class Schedule < ApplicationRecord
  belongs_to :business
  has_many :shifts
  belongs_to :manager, class_name: 'User'
end
