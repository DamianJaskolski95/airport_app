class CreateAirplanes < ActiveRecord::Migration[5.2]
  def change
    create_table :airplanes do |t|
      t.text :airlines
      t.text :model
      t.integer :capacity
      t.boolean :used, default: false 

      t.timestamps
    end
  end
end
