class CreateMemberships < ActiveRecord::Migration[6.0]
  def change
    create_table :memberships do |t|
      t.belongs_to :team, index: true
      t.belongs_to :employee, index: true
      t.string :google_user_id
      t.string :team_id
      t.boolean :active

      t.timestamps
    end
  end
end
