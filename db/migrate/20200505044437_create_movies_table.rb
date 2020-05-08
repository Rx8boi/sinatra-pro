class CreateMoviesTable < ActiveRecord::Migration
  def change
  	create_table :movie do |t|
  		t.string :name
  		t.text :hero_journey
  		t.date :release_date
  	end
  end
end


#name
#hero_journey
#release_date_
#hero_id