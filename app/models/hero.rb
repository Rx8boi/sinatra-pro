class Hero < ActiveRecord::Base
has_many :movies
has_secure_password
validates :name, :bio, :secret_identity, presence: true #<= Cant create blank heroes
#cant create same hero profile
validates :secret_identity, uniqueness: true 
end