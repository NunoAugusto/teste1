
class PontinhosController < ApplicationController
  
  $ada
  def index
    @pontinhos = Pontinho.all
  end
  def new
    @pontinho=Pontinho.new
  end
  def create
   
    @pontinho=Pontinho.new(params[:desenho])
    respond_to do |format|
      format.html { redirect_to(index) }
      format.xml  { head :ok }
    end
  end

  

  def show
    @pontinhos = Pontinho.all

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pontinho }
    end
  end


  def destroy
      @pontinhos=Pontinho.all
      if Pontinho.exists?
        @pontinhos.each do |p|
            p.destroy
        end
      end   
    
      

  end


end