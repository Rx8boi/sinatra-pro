class AddSecretIdentityToHeros < ActiveRecord::Migration
  def change
  	add_column :heros, :secret_identity, :string
  end
end
