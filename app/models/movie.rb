class Movie < ActiveRecord::Base
belongs_to :hero
#needs to validate name of movie, the hero's journey & release date?
validates :name, :hero_journey, presence: true
end
