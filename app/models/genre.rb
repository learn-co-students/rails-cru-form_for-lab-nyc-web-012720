class Genre < ApplicationRecord
    has_many :songs, dependent: :destroy
    has_many :artists, through: :songs
    validates :name, presence: true
    validates :name, uniqueness: true
end
