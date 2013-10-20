class CreateProjectPics < ActiveRecord::Migration
  def self.up
    create_table :project_pics do |t|
      t.int :project_id
      t.string :name
      t.text :description
      t.string :photo_file_name
      t.string :photo_content_type
      t.int :photo_file_size

      t.timestamps
    end
  end

  def self.down
    drop_table :project_pics
  end
end
