class Ant
	include HTTParty
	base_uri 'http://www.antweb.org/api/v2/'	
	#base_uri ENV["ant_API"]
	default_params fields: "specimens", q: "search"
	format :json



	def initialize(xy, radius)
		@options = { query: {coord: xy, r: radius } }
	end

	def samples
		self.class.get("", @options )
	end




end
	#ants = Ant.new("38.62,90.19", 700)
	#pp ants.samples
#http://www.antweb.org/api/v2/?coord=38.62,90.19&r=700