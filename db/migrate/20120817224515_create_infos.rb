class CreateInfos < ActiveRecord::Migration
  def change
    create_table :infos do |t|
      t.references :location
      t.string :latitude
      t.string :longitude
      t.string :temperature
      t.string :humidity
      t.string :status
      t.datetime :happened_at

      t.timestamps
    end
    add_index :infos, :location_id
  end
end
