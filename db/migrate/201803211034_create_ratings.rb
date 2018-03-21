class CreateRatings < ActiveRecord::Migration[5.0]
  def change
    create_table :movie_ratings do |t|
      t.string  :rating
    end
  end
end
