class CreateEmployments < ActiveRecord::Migration
  def change
    create_table :employments do |t|
      t.integer :contact
      t.integer :company

      t.timestamps
    end
  end
end
