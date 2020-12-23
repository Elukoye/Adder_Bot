require 'sinatra/base'
module AdderBot
	class Web < Sinatra::Base
		get '/' do
			'Speedy Addition'
		end
	end
end