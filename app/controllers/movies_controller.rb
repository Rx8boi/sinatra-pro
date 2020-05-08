class MoviesController < ApplicationController


	get '/' do
		#homepage/splashpage
	erb :index
	end

	get '/movies' do
		#list of all heroes movies <- post login
	erb :'/movies'
	end

	get '/movies/new' do
		#on the heroes movie page <- post login
		erb :'/movies/new'
	end

	get '/movies/id' do
		#on each instance of a movie
		erb :'/movies/#{id}'
	end


end