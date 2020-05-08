class CreateHeroesTable < ActiveRecord::Migration
  def change
  	create_table :heros do |t|
  		t.string :name
  		t.text :bio
  	end
  end
end
