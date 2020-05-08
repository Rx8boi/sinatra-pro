require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "password_security"
  end

  	get '/' do				#this is main/front page. Change to to get '/home'?
  		redirect_if_logged_in
  		redirect '/login'
  	end

  	helpers do
  		def logged_in?
  			session[:hero_id]
  		end

  		def current_user
  			@hero ||= Hero.find_by(id: session[:hero_id])
  		end

  		def redirect_if_not_logged_in
  			if !logged_in?
  				redirect '/login'
  			end
  		end

  		def redirect_if_logged_in
  			if logged_in?
  				redirect '/movies'
  			end
  		end
  	end

end
