class DesenhozinhosController < ApplicationController
  # GET /desenhozinhos
  # GET /desenhozinhos.json
  def index
    @desenhozinhos = Desenhozinho.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @desenhozinhos }
    end
  end

  def show
    
    @desenhozinho=Desenhozinho.create(:NumDesenho=>($anumd))
    i=0
    loop do
      
        Pontinho.create(:NumDesenho=>@desenhozinho.id ,:NumPonto=>i , :CX=>$ada[i] , :CY=>$ada[i+1])
        i=i+2
        break if i>=$ada.length     
    end
    respond_to do |format|
      format.html {render action: "index"}# index.html.erb
      format.json { render json: @desenhozinhos }
    end     
  end

  def mostradesenho
     @desenhozinho = Desenhozinho.find(params[:id])
     @desenhozinho.Pontinho(:NumDesenho)

  end  
  # POST /desenhozinhos
  # POST /desenhozinhos.json
  def create
    @desenhozinho = Desenhozinho.new(params[:desenhozinho])

    respond_to do |format|
      if @desenhozinho.save
        format.html { redirect_to @desenhozinho, notice: 'Desenhozinho was successfully created.' }
        format.json { render json: @desenhozinho, status: :created, location: @desenhozinho }
      else
        format.html { render action: "new" }
        format.json { render json: @desenhozinho.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /desenhozinhos/1
  # PUT /desenhozinhos/1.json
  def update
    @desenhozinho = Desenhozinho.find(params[:id])

    respond_to do |format|
      if @desenhozinho.update_attributes(params[:desenhozinho])
        format.html { redirect_to @desenhozinho, notice: 'Desenhozinho was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @desenhozinho.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /desenhozinhos/1
  # DELETE /desenhozinhos/1.json

  def destroy
    @desenhozinhos=Desenhozinho.all
    @pontinhos=Pontinho.all
    if Desenhozinho.exists?
        @desenhozinhos.each do |d|
            d.destroy
            d.save
        end
        
        @pontinhos.each do |p|
            p.destroy
            p.save
        end 


    end 
    respond_to do |format|
      format.html {render action: "index"}# index.html.erb
      format.json { render json: @desenhozinhos }
    end  
  end
end
