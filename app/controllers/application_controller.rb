require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret
  end

  	get '/' do				#this is main/front page. Change to to get '/home'?
  		redirect_if_logged_in
  		redirect '/login'
  	end

  	helpers do







  	end

end
