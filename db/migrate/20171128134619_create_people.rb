class CreatePeople < ActiveRecord::Migration[5.1]
  def change
    create_table :people do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :nickname
      t.float :priority, null: false
      t.references :relationship_type, foreign_key: true

      t.timestamps
    end
  end
end
