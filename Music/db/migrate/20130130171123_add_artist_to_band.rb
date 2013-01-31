class AddArtistToBand < ActiveRecord::Migration
  def change
  	add_column :artists, :band_id, :integer
  end
end
