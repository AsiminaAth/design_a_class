require 'challenge'

RSpec.describe MusicTracker do
    it "has an empty list" do
        musicTracker = MusicTracker.new
        expect(musicTracker.list_of_music_tracks).to eq []
    end

    it "gets the music track in the music list" do
        musicTracker = MusicTracker.new
        musicTracker.add("Hell Bells")
        musicTracker.add("Chase The Ace")
        musicTracker.add("Thunderstruck")
        expect(musicTracker.list_of_music_tracks).to eq ["Hell Bells", "Chase The Ace", "Thunderstruck"]
    end

    it "shows the music list" do
        musicTracker = MusicTracker.new
        musicTracker.add("Hell Bells")
        musicTracker.add("Chase The Ace")
        musicTracker.add("Thunderstruck")
        expect(musicTracker.show).to eq ["Hell Bells", "Chase The Ace", "Thunderstruck"]
    end
end