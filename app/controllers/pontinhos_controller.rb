
class PontinhosController < ApplicationController
  # GET /pontinhos
  # GET /pontinhos.json
  

  def index
    @pontinhos = Pontinho.all

  end
  def criaPonto(sandc,anumd,anump,aX,aY)
    if sandc==1 
      Pontinho.Create(:NumDesenho=>anumd,:NumPonto=>anump,:CX=>aX,:CY=>aY,) 
    end   
  end  
  def destroy
      @pontinho = Pontinho.find(params[:id])
      @pontinho.destroy
    end
     
end
