class CreateWelcomes < ActiveRecord::Migration
  def change
    create_table :welcomes do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :dob
      t.string :gender
      t.string :password
      t.string :confirm_password

      t.timestamps
    end
  end
end
