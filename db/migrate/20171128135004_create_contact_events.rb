class CreateContactEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :contact_events do |t|
      t.string :notes
      t.datetime :scheduled_for
      t.datetime :occurred_at
      t.float :quality
      t.references :person, foreign_key: true
      t.references :contact_event_type, foreign_key: true

      t.timestamps
    end
  end
end
