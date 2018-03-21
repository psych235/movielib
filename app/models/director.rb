class Director < ApplicationRecord
  has_many :movies, through: :directors_movies

  def name
    "#{fname} #{lname}"
  end
end
