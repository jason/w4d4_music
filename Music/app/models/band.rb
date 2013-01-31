class Band < ActiveRecord::Base
  attr_accessible :name
  has_many :artists
  has_many :recordings
  has_many :songs, through: :recordings

  def self.recorded_song_repeatedly
		self
			.select('bands.*,
							s.name AS song_name,
							COUNT(r.band_id) AS song_count')
			.having('song_count > 1')
			.joins("INNER JOIN recordings r ON r.band_id = bands.id")
			.joins("INNER JOIN songs s ON r.song_id = s.id")
			.group('bands.id, s.name')
  end
end
