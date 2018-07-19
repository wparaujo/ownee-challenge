class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :name
      t.float :price
      t.belongs_to :genre, index: true

      t.timestamps
    end
  end
end
