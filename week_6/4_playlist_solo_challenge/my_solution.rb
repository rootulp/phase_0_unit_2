# U2.W6: Create a Playlist from Driver Code

# I worked on this challenge by myself.

# Pseudocode
# Define a class called Song
    #Initialize should take the title and artist and assign them
    #Should have a play method
# Define a class called Playlist
    #Initialize should take the list of songs and store them in an array
    #Should have an add function that adds song to array
    #Should have a play_all function that iterates through array and puts song

# Initial Solution
# class Song

#     def initialize(title, artist)
#         @title = title
#         @artist = artist
#     end

#     def play()
#         puts "Playing #{@title} by #{@artist}"
#     end

#     def get_title()
#         @title
#     end

#     def get_artist()
#         @artist
#     end

# end #class Song

# class Playlist

#     def initialize(*songs)
#         @songs = songs
#     end

#     def add(*song)
#         @songs << song
#         @songs.flatten!
#     end

#     def num_of_tracks()
#         @songs.count
#     end

#     def remove(song)
#         @songs.delete(song)
#     end

#     def includes?(song)
#         @songs.include?(song)
#     end

#     def play_all()
#         n = @songs.count - 1
#         puts "Playing the following tracks:"
#         n.times do |i|
#             cur_song = @songs[i]
#             cur_title = cur_song.get_title
#             cur_artist = cur_song.get_artist
#             puts "#{i}. #{cur_title} by #{cur_artist}"
#         end
#     end

# end #class Playlist

# Refactored Solution

class Song

    def initialize(title, artist)
        @title = title
        @artist = artist
    end

    def play()
        puts "Playing #{@title} by #{@artist}"
    end

    def get_title()
        @title
    end

    def get_artist()
        @artist
    end

end #class Song

class Playlist

    def initialize(*songs)
        @songs = songs
    end

    def add(*song)
        @songs << song
        @songs.flatten!
    end

    def num_of_tracks()
        @songs.count
    end

    def remove(song)
        @songs.delete(song)
    end

    def includes?(song)
        @songs.include?(song)
    end

    def play_all()
        puts "Playing all tracks:"
        @songs.each { |cur_song| cur_song.play }
    end

    def display()
        puts "Here are all the tracks in this playlist"
        x = 1
        @songs.each do |i|
            cur_title = i.get_title
            cur_artist = i.get_artist
            puts "#{x}. #{cur_title} by #{cur_artist}"
            x = x+1
        end
    end

end #class Playlist

# DRIVER TESTS GO BELOW THIS LINE

one_by_one = Song.new("One by One", "Sirenia")
world_so_cold = Song.new("World So Cold", "Three Days Grace") 
going_under = Song.new("Going Under", "Evanescence")
 
my_playlist = Playlist.new(one_by_one, world_so_cold, going_under)
 
lying_from_you = Song.new("Lying From You", "Linkin Park")
angels = Song.new("Angels", "Within Temptation")
 
my_playlist.add(lying_from_you, angels)
p my_playlist.num_of_tracks == 5
going_under.play
my_playlist.remove(angels)
p my_playlist.includes?(lying_from_you) == true
my_playlist.play_all
my_playlist.display

# Reflection 
# My refactored code isn't much different from my initial solution besides the new
# display function which I forgot about. I didn't see a logical difference between 
# play_all and display so I made play_all call each song's play function. Display
# just spits out all the info in the playlist.