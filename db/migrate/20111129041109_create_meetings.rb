class CreateMeetings < ActiveRecord::Migration
  def change
    create_table :meetings do |t|
      t.integer :event
      t.integer :contact

      t.timestamps
    end
  end
end
