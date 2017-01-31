class IndexController < ApplicationController

	def index
		@casa = Casa.new
		@casas = Casa.all
	end
end
