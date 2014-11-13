class Renametyp < ActiveRecord::Migration
  def self.up
		rename_column :groups, :type, :blood_type
	end

	def self.down
		rename_column :groups, :blood_type, :type
	end
end
