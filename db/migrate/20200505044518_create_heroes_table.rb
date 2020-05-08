class CreateHeroTable < ActiveRecord::Migration
  def change
  	create_table :heroes do |t|
  		t.string :name
  		t.text :bio
  	end
  end
end
