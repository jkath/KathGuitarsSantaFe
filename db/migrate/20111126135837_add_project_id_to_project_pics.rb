class AddProjectIdToProjectPics < ActiveRecord::Migration
  def self.up
    add_column :project_pics, :project_id, :int
  end

  def self.down
    remove_column :project_pics, :project_id
  end
end
