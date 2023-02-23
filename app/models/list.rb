class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy # destroys saved movies in child when destroying self
  has_many :movies, through: :bookmarks

  validates :name, presence: true
  validates :name, uniqueness: true
end
