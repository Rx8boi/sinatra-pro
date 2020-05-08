class MoviesController < ApplicationController

	get '/movies' do
		redirect_if_not_logged_in
		if current_hero.movies !=[]   #list of all heroes movies <- post login
			@hero_movies = current_hero.movies.all 
		end
		@movies = Movie.all
		erb :"/movies/index"

	get '/movies/new' do
		#on the heroes movie page <- post login
		redirect_if_not_logged_in
		@heroes = Hero.all
		erb :'/movies/new'
	end


	post '/movies' do
		movie = Movie.new(params)
		if movie.save
			redirect "/posts/#{movie.id}"
		else
			redirect 'movies/new'
		end
	end

	

	get '/movies/id' do
		#on each instance of a movie
		erb :'/movies/#{id}'
	end


end