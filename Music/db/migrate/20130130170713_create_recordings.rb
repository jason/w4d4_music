class CreateRecordings < ActiveRecord::Migration
  def change
    create_table :recordings do |t|
    	t.integer :band_id
    	t.integer :song_id
      t.timestamps
    end
  end
end
