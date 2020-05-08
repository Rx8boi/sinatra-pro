class Hero < ActiveRecord::Base
has_many :movies
has_secure_password


validates :name, :bio, presence: true #<= Cant create blank heroes

#cant create same hero profile
validates :name, uniqueness: true 
end