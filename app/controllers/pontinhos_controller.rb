
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
  def create
  end
  
  def destroy
    @pontinhos = Pontinho.all
    @pontinhos.destroy

    respond_to do |format|
      format.html { redirect_to(index) }
      format.xml  { head :ok }
    end
  end
  def guardalimpa(hda)
    @pontinhos = Pontinho.all
      #aqui deve estar o código para inserir na BD o desenho hda ou em hash ou em array
    respond_to do |format|
        format.html { redirect_to(index) 
        format.xml  { head :ok }}
    end
  end  
end
