class AddUnitToGroup < ActiveRecord::Migration
  def change
    add_column :groups, :unit, :string
  end
end
