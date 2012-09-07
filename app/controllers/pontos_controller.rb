class PontosController < ApplicationController
	def index
    @Pontos = Ponto.all
  end
end
