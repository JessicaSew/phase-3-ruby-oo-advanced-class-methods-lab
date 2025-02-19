class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
   
  end

  def save
    self.class.all << self
  end

  def self.create
    song = self.new
    song.save
    song
  end

  def self.new_by_name(name)
    song = self.new 
    song.name = name
    song
  end
  def self.create_by_name(song)
    song = self.new
    song.name = song
    song.save
    
  end

  def self.find_by_name(song)
    self.all.find {|song| song.name == song}
    
  end

  def self.find_or_create_by_name(song)

  end

  def self.alphabetical
    self.all.sort_by {|song| song.name}
    song
  end

  def self.new_from_filename(file_name)

  end

  def self.create_from_filename(file_name)
    song = self.new_from_filename(file_name)
    song.save
    song

  end

  def self.destroy_all
    self.all.clear
  end

end
