class DesenhosController < ApplicationController
	def index
		@Desenhos=Desenho.all

  	end
end
