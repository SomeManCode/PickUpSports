class AddZipcodeToSports < ActiveRecord::Migration
  def change
    add_column :sports, :zipcode, :integer
  end
end
