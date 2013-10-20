class CreateGuitarPics < ActiveRecord::Migration
  def self.up
    create_table :guitar_pics do |t|
      t.string :title
      t.text :description
      t.string :photo_file_name
      t.string :photo_content_type
      t.integer :photo_file_size

      t.timestamps
    end
  end

  def self.down
    drop_table :guitar_pics
  end
end
