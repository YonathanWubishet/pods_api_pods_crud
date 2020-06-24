class Membership < ApplicationRecord
  belongs_to :pod
  belongs_to :employee
end
