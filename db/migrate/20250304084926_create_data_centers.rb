class CreateDataCenters < ActiveRecord::Migration[8.0]
  def change
    create_table :data_centers do |t|
      t.timestamps
    end
  end
end
