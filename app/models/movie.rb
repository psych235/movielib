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
  accepts_nested_attributes_for :directors_movies
  accepts_nested_attributes_for :actors

  def directors_attributes=(director_attributes)
    director_attributes.values.each do |director_attribute|
      director = Director.find_or_create_by(director_attribute)
      self.directors << director
    end
  end

  def list_directors
    list = []
    directors.each do |director|
      list << director.name
    end
    list
  end
end
