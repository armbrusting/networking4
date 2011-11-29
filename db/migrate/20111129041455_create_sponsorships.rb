class CreateSponsorships < ActiveRecord::Migration
  def change
    create_table :sponsorships do |t|
      t.integer :event
      t.integer :company

      t.timestamps
    end
  end
end
