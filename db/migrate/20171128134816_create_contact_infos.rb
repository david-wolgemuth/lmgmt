class CreateContactInfos < ActiveRecord::Migration[5.1]
  def change
    create_table :contact_infos do |t|
      t.string :content, null: false
      t.string :details
      t.boolean :primary, null: false
      t.references :person, foreign_key: true
      t.references :contact_info_type, foreign_key: true

      t.timestamps
    end
  end
end
