class AddEmployeeToMemberships < ActiveRecord::Migration[6.0]
  def change
    add_reference :memberships, :employee, null: false, foreign_key: true
  end
end
