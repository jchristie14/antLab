class CreateExplorations < ActiveRecord::Migration[5.0]
  def change
    create_table :explorations do |t|
      t.string :location
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
