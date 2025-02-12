class CreateHomepages < ActiveRecord::Migration[8.0]
  def change
    create_table :homepages do |t|
      t.timestamps
    end
  end
end
