class SessionsController < ApplicationController

	get '/login' do 
		erb :"sessions/login"
	end
 
 	post '/login' do
 		hero = Hero.find_by(name: params[:name])
 		if user && user.authenticate(params[:secret_identity])
 			session[:hero_id] = hero.id 
 			redirect "/movies"
 		else
 			redirect "/login"
 	end




end