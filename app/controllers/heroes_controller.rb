class HeroesController < ApplicationController
	#used to create new users & check if logged on

	#check comes first
	get '/heroes/signup' do
		redirect_if_logged_in
		erb :"/heroes/signup"
	end

	#create & save
	post '/heroes' do
		@hero = hero.new(params)
		if @hero && @hero.save #if hero is created and saved => session setting
		session[:hero_id] = @hero.id #logs them in already no re-route to log in screen
		redirect '/posts'
		else #sign in failed *retry at login*
		erb :"/heroes/signup"
		end
	end

end