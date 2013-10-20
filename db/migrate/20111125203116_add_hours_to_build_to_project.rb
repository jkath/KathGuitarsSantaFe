class AddHoursToBuildToProject < ActiveRecord::Migration
  def self.up
    add_column :projects, :hours_to_build, :int
  end

  def self.down
    remove_column :projects, :hours_to_build
  end
end
