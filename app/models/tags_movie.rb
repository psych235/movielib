class TagsMovie < ApplicationRecord
  belongs_to :tags
  belongs_to :movie
end
