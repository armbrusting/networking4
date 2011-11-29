class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :firstname
      t.string :lastname
      t.string :phone
      t.string :email
      t.string :twitter
      t.string :note

      t.timestamps
    end
  end
end
