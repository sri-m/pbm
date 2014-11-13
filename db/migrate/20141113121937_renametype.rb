class Renametype < ActiveRecord::Migration
  	def self.up
		rename_column :available_stocks, :type, :blood_type
	end

	def self.down
		rename_column :available_stocks, :blood_type, :type
	end

end
