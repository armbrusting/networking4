class CreateFollowups < ActiveRecord::Migration
  def change
    create_table :followups do |t|
      t.integer :event
      t.integer :contact
      t.string :note
      t.datetime :duedate
      t.string :status

      t.timestamps
    end
  end
end
