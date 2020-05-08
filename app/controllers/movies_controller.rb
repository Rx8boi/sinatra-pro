class MoviesController < ApplicationController

	get '/movies' do
		redirect_if_not_logged_in
		if current_hero.movies !=[]   #list of all heroes movies <- post login
			@hero_movies = current_hero.movies.all 
		end
		@movies = Movie.all
		erb :"/movies/index"
	end

	get '/movies/new' do
		#on the heroes movie page <- post login
		redirect_if_not_logged_in
		@heroes = Hero.all
		erb :'/movies/new'
	end


	post '/movies' do
		movie = current_hero.movies.build(params)
		if movie.save
			redirect "/movies/#{movie.id}"
		else
			redirect 'movies/new'
		end
	end

	#edit needs to come before id route

	get '/movies/:id/edit' do
		redirect_if_not_logged_in
		@heroes = Hero.all
		@movie = Movie.find_by_id(params[:id])
		if @movie.hero.id == current_hero.id
			erb :"/movies/edit"
		else
			redirect "/movies"
		end
	end

	patch '/movies/:id' do
		#on each instance of a movie
		@movie = Movie.find_by_id(params[:id])
		params.delete("_method")
		if @movie.update(params)
			redirect "/movies/#{@movie.id}"
		else
			redirect "/movies/#{@movie.id}/edit"
		end
	end

	get '/movies/:id' do
		redirect_if_not_logged_in
		@movie = Movie.find_by_id(params["id"])
		erb :"/movies/show"
	end

	delete '/movies/:id' do
		@movie = Movie.find_by_id(params[:id])
		if @movie.hero.id == current_hero.id
			@movie.destroy
			redirect "/movies"
		else
			redirect "/movies"
		end
	end

end