class CreateJoinTables < ActiveRecord::Migration[5.0]
  def change
    create_join_table :movies, :genres
    create_join_table :movies, :directors
    create_join_table :movies, :actors
    create_join_table :movies, :tags
  end
end
