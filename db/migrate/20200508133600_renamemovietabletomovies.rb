class Renamemovietabletomovies < ActiveRecord::Migration
  def change
  	rename_table :movie, :movies
  end
end
