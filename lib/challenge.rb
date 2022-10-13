class MusicTracker
    def initialize
        @list_of_music_tracks = [] 
    end

    def add(music_track) 
        @list_of_music_tracks << music_track 
    end

    def show(list_of_music_tracks) 
       return list_of_music_tracks 
    end
end