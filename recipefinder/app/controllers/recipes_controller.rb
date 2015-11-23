class RecipesController < ApplicationController
  def index
  	#if @search_term.nil? 
  	#	puts "error no search term defined "
  	#else
  	@search_term = params[:search] || 'chocolate' #http://192.168.1.111:3000/?search=crepe
  	@recipes = Recipe.for(@search_term)
  end
end
#end

