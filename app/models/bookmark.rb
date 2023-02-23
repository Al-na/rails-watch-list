class Bookmark < ApplicationRecord
  has_many :movies, :lists
end
