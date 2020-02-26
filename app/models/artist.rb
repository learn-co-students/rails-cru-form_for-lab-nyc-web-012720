class Artist < ApplicationRecord
    has_many :songs, dependent: :destroy
    has_many :genres, through: :songs
    validates :name, presence: true
    validates :name, uniqueness: true
end
