class CreateProjects < ActiveRecord::Migration
  def self.up
    create_table :projects do |t|
      t.string :name
      t.date :date_complete
      t.int :hours_to_build
      t.text :specs
      t.string :client_location

      t.timestamps
    end
  end

  def self.down
    drop_table :projects
  end
end
