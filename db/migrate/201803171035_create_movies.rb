class CreateMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :movies do |t|
      t.string  :title
      t.string  :rating
      t.integer :year
      t.integer :genre_id
      t.integer :runtime
      t.text    :description

      t.timestamps
    end
  end
end
