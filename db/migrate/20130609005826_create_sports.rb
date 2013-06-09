class CreateSports < ActiveRecord::Migration
  def change
    create_table :sports do |t|
      t.string :address
      t.float :latitude
      t.float :longitude
      t.integer :needed
      t.string :game

      t.timestamps
    end
  end
end
