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
    @@all << song
    song
  end
  
  def name
      @name
  end
  
  def self.new_by_name(song_name)
    song = self.new
    song.name = song_name
<<<<<<< HEAD
    song
=======
>>>>>>> 44d2771023887e6bc000b8e2fc3ddbe4b642fa42
  end
  
  def self.create_by_name(song_name)
    song = self.create
    song.name = song_name
<<<<<<< HEAD
    song
  end
  
  def self.find_by_name(song_name)
    found_song = ""
    @@all.each do |song|
      if song.name == song_name
        found_song = song
      else
      end
    end
    if found_song == ""
      nil
    else
      found_song
    end
  end
    
    
  def self.find_or_create_by_name(song_name)
    if self.find_by_name(song_name) == nil
      new_song = self.create_by_name(song_name)
    else
      self.find_by_name(song_name)
    end
  end
    
  def self.alphabetical
    @@all.sort do |a, b|
    a.name <=> b.name
    end
  end
  
  def self.new_from_filename(file_name)
    file_array = file_name.split(/[\-\.]/)
    file_array.collect do |name|
      name.rstrip!
      name.rstrip
      name.lstrip
      name.lstrip!
    end
    file_array
    song = self.create_by_name(file_array[1])
    song.artist_name = file_array[0]
    song
  end
  
  def self.create_from_filename(file_name)
    self.new_from_filename(file_name)
  end

    
  def self.destroy_all
    @@all = []
=======
>>>>>>> 44d2771023887e6bc000b8e2fc3ddbe4b642fa42
  end
  
end
