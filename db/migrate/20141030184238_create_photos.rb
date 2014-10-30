class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.integer :place_id
      t.string :url
      t.text :description

      t.timestamps
    end
  end
end
