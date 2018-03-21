class AddMovieFormat < ActiveRecord::Migration[5.0]
  def change
    add_column :movies, :format_id, :integer
    create_table :formats do |t|
      t.string  :name

      t.timestamps
    end
  end
end
