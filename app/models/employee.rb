class Employee < ApplicationRecord
  has_many :memberships
  has_many :pods, through: :memberships
end
