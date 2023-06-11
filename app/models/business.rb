class Business < ApplicationRecord
  has_many :shifts
  has_many :outlets
  has_many :positions
end
