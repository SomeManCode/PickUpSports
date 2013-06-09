class AddStateToSports < ActiveRecord::Migration
  def change
    add_column :sports, :state, :string
  end
end
