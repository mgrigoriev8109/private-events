class CreateEventAttendings < ActiveRecord::Migration[7.0]
  def change
    create_table :event_attendings do |t|
      t.integer :created_event_id
      t.integer :attended_event_id

      t.timestamps
    end
  end
end
