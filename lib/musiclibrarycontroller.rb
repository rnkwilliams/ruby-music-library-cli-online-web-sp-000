class MusicLibraryController

  def initialize(path= "./db/mp3s")
    @path = path
    MusicImporter.new(path).import
  end

  def call
    user_input = ""
    while user_input != "exit"
      puts "Welcome to your music library!"
      puts "To list all of your songs, enter 'list songs'."
      puts "To list all of the artists in your library, enter 'list artists'."
      puts "To list all of the genres in your library, enter 'list genres'."
      puts "To list all of the songs by a particular artist, enter 'list artist'."
      puts "To list all of the songs of a particular genre, enter 'list genre'."
      puts "To play a song, enter 'play song'."
      puts "To quit, type 'exit'."
      puts "What would you like to do?"
      user_input = gets.strip
    if user_input == "list songs"
      self.list_songs
    elsif user_input == "list artists"
      self.list_artists
    elsif user_input == "list genres"
      self.list_genres
    elsif user_input == "list artist"
      self.list_songs_by_artist
    elsif user_input == "list genre"
      self.list_songs_by_genre
    elsif user_input == "play song"
      self.play_song
    end
  end
end

  def list_songs
    Song.sort_songs
  end

  def list_artists
    Artist.sort_songs
  end
end