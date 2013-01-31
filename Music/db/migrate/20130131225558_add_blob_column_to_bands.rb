class AddBlobColumnToBands < ActiveRecord::Migration
  def change
    add_column :bands, :picture, :binary
  end
end
