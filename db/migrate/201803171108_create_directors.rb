class CreateDirectors < ActiveRecord::Migration[5.0]
  def change
    create_table :directors do |t|
      t.string  :fname
      t.string  :lname
      t.text    :bio
      t.date    :birthdate

      t.timestamps
    end
  end
end
