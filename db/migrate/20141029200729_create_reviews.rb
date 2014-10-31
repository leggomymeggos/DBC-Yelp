class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :description
      t.belongs_to :user
      t.belongs_to :place

      t.timestamps
    end
  end
end
