class RenameMyColumn < ActiveRecord::Migration
  	def self.up
		rename_column :consumers, :picked_date, :pickup_date
	end

	def self.down
		rename_column :consumers, :pickup_date, :picked_date
	end

end
