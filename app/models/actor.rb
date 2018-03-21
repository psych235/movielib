class Actor < ApplicationRecord
  has_many :movies, through: :actors_movies

  def name
    "#{fname} #{lname}"
  end
end
