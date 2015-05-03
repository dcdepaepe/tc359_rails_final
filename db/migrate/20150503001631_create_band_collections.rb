class CreateBandCollections < ActiveRecord::Migration
  def change
    create_table :band_collections do |t|
      t.string :band_name
      t.integer :number_of_albums
      t.boolean :seen_in_concert

      t.timestamps null: false
    end
  end
end
