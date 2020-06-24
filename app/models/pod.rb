class Pod < ApplicationRecord
  has_many :memberships
  has_many :employees, through: :memberships
end
