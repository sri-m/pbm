class CreateDonors < ActiveRecord::Migration
  def change
    create_table :donors do |t|
      t.string :name
      t.string :blood_group
      t.string :age
      t.string :date_to_donate
      t.string :gender
      t.string :email
      t.string :phone
      t.text :address

      t.timestamps
    end
  end
end
