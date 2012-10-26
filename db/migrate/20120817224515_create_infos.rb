class CreateInfos < ActiveRecord::Migration
  def change
    create_table :infos do |t|
      t.datetime :happened_at
      t.string :latitude
      t.string :longitude
      t.string :temperature
      t.string :humidity
      t.string :nitrogen
      t.string :phosphoru
      t.string :potassium
      t.string :status
      t.boolean  :gmaps
    end
  end
end
