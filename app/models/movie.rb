class Movie < ApplicationRecord
  has_one :format

  has_many :genres_movies
  has_many :directors_movies
  has_many :ratings_movies
  has_many :actors_movies
  has_many :genres, through: :genres_movies
  has_many :directors, through: :directors_movies
  has_many :ratings, through: :ratings_movies
  has_many :actors, through: :actors_movies

  def list_directors
    list = []
    directors.each do |director|
      list << director.name
    end
    list
  end
end
