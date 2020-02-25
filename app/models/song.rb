class Song < ApplicationRecord
belongs_to :artist
belongs_to :genre

def genre_name
    Genre.all.find(self.genre_id).name
end

end