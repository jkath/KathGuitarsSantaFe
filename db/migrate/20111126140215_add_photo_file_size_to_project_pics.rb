class AddPhotoFileSizeToProjectPics < ActiveRecord::Migration
  def self.up
    add_column :project_pics, :photo_file_size, :int
  end

  def self.down
    remove_column :project_pics, :photo_file_size
  end
end
