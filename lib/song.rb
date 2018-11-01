class Song

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def artist
    @artist
  end

  def name
    @name
  end

  def artist=(artist)
    @artist = artist
  end

  def artist_name
    artist ? self.artist.name : nil
  end

  def songs
    @@all
  end

end
