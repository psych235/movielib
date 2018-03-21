class CreateActors < ActiveRecord::Migration[5.0]
  def change
    create_table :actors do |t|
      t.string  :fname
      t.string  :lname
      t.date    :birthdate
      t.text    :bio
      t.string  :imdb_link

      t.timestamps
    end
  end
end
