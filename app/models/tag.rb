class Tag < ApplicationRecord
  has_many :movies, through: :tags_movies
end
