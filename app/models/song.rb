class Song < ApplicationRecord
  belongs_to :artist
  belongs_to :genre
  validates :name, presence: true
  validates :name, uniqueness: true
end
