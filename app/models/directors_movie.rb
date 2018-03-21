class DirectorsMovie < ApplicationRecord
  belongs_to :movie
  belongs_to :director

  accepts_nested_attributes_for :director
end
