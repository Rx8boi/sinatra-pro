class SessionsController < ApplicationController

	get '/login' do 
		erb :"sessions/login"
	end
 
 	post '/login' do
 		hero = Hero.find_by(name: params[:name])
 		
 		if hero && hero.authenticate(params[:secret_identity])
 			session[:hero_id] = hero.id 
 			redirect "/movies"
 		else
 			redirect "/login"
 		end
 	end

 	get '/logout' do
 		session.clear
 		redirect "/login"
 	end



end