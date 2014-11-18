class AddNameToMembers < ActiveRecord::Migration
  def change
    add_column :members, :user_name, :string
    add_column :members, :phone, :string
    add_column :members, :dob, :string
    add_column :members, :gender, :string
  end
end