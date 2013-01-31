class Artist < ActiveRecord::Base
  attr_accessible :name, :band_id
  belongs_to :band

  has_many :authored_songs,
  					class_name: 'Song',
  					foreign_key: 'author_id'

  has_many :performed_songs, through: :band, source: :recordings

  def self.songs_per_artist
  	total = self
  		.select("artists.name AS artist, songs.name AS song")
  		.joins(:authored_songs)
  		.group('artists.id, songs.id')

  	total.inject({}) do |memo, object|
  		memo[object.artist] ||= []
  		memo[object.artist] << object.song
  		memo
  	end
  end
end
