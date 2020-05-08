class SessionsController < ApplicationController

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end


end