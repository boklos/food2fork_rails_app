FOOD2FORK_KEY = "f8249a8a3d22f3593f9381796b4e883c"


class Recipe
#FOOD2FORK_KEY = "f8249a8a3d22f3593f9381796b4e883c"


include HTTParty

	hostport  = ENV['FOOD2FORK_SERVER_AND_PORT'] || 'www.food2fork.com' #in linux export FOOD2FORK_KEY='f8249a8a3d22f3593f9381796b4e883c'
  	hostport  = 'www.food2fork.com'                              #in linux export FOOD2FORK_SERVER_AND_PORT='www.food2fork.com'

  	base_uri  "http://#{hostport}/api"
	default_params key: FOOD2FORK_KEY ,
	fields: "title,f2f_url,social_rank,image_url", q: "search"
	format :json


	def self.for term
		get("/search", query: { q: term }) ["recipes"]
	end
end