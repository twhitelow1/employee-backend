class Schedule < ApplicationRecord
  belongs_to :business
  has_many :shifts
end
