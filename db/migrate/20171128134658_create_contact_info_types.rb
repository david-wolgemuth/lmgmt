class CreateContactInfoTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :contact_info_types do |t|
      t.string :name, null: false

      t.timestamps
    end
  end
end
