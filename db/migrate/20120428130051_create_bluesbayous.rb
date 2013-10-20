class CreateBluesbayous < ActiveRecord::Migration
  def self.up
    create_table :bluesbayous do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :bluesbayous
  end
end
