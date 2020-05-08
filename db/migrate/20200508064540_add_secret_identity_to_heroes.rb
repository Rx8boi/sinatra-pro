class AddSecretIdentityToHeroes < ActiveRecord::Migration
  def change
  	add_column :heroes, :secret_identity, :string
  end
end
