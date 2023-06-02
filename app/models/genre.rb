class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    # return the number of songs in a genre
    # using the count method to get no. of songs
    self.song.count

  end

  def artist_count
    # use the count method
    # return the number of artists associated with the genre
    self.artists.count
  end

  def all_artist_names
    # pluck retrieves only the specified attribute from databasee
    # it pluks names
    # return an array of strings containing every musician's name
    self.artists.pluck(:name)
  end
end
