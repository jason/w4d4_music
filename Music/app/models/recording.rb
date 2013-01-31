class Recording < ActiveRecord::Base
  attr_accessible :band_id, :song_id

  belongs_to :band
  belongs_to :song
end
