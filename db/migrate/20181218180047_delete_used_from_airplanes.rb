class DeleteUsedFromAirplanes < ActiveRecord::Migration[5.2]
  def change
    remove_column :airplanes, :used
  end
end
