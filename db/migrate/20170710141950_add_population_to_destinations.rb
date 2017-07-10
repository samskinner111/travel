class AddPopulationToDestinations < ActiveRecord::Migration[5.1]
  def change
    add_column :destinations, :population, :integer
  end
end
