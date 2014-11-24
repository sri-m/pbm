class RenameMyGender < ActiveRecord::Migration
  	def self.up
		rename_column :members, :gendeer, :gender
	end

	def self.down
		rename_column :members, :gender, :gendeer
	end

end
