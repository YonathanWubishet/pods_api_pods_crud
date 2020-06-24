class CreatePods < ActiveRecord::Migration[6.0]
  def change
    create_table :pods do |t|
      t.string :name
      t.string :lead
      t.boolean :active

      t.timestamps
    end
  end
end
