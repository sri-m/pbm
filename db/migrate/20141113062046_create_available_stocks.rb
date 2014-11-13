class CreateAvailableStocks < ActiveRecord::Migration
  def change
    create_table :available_stocks do |t|
      t.string :type
      t.string :units
      t.string :price

      t.timestamps
    end
  end
end
