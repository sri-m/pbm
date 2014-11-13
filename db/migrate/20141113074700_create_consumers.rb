class CreateConsumers < ActiveRecord::Migration
  def change
    create_table :consumers do |t|
      t.string :name
      t.string :require_blood_group
      t.string :units_required
      t.string :email
      t.string :phone
      t.string :picked_date
      t.text :address

      t.timestamps
    end
  end
end
