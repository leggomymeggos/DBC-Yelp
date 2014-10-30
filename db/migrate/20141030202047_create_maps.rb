class CreateMaps < ActiveRecord::Migration
  def change
    create_table :maps do |t|
    	t.string :url
    	t.string :address
    	t.timestamps
    end
  end
end
