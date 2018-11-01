class Artist

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def add_song(song)
    @songs << song
    song.artist =self
  end

  def add_song_by_name(song)
    add_song(Song.new(song))
  end

  def songs
    @songs
  end

  def self.song_count
    Song.all.length
  end

end
