class PontinhosController < ApplicationController
  # GET /pontinhos
  # GET /pontinhos.json
  def index
    @pontinhos = Pontinho.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pontinhos }
    end
  end

  # GET /pontinhos/1
  # GET /pontinhos/1.json
  def show
    @pontinho = Pontinho.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pontinho }
    end
  end

  # GET /pontinhos/new
  # GET /pontinhos/new.json
  def new
    @pontinho = Pontinho.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pontinho }
    end
  end

  # GET /pontinhos/1/edit
  def edit
    @pontinho = Pontinho.find(params[:id])
  end

  # POST /pontinhos
  # POST /pontinhos.json
  def create
    @pontinho = Pontinho.new(params[:pontinho])

    respond_to do |format|
      if @pontinho.save
        format.html { redirect_to @pontinho, notice: 'Pontinho was successfully created.' }
        format.json { render json: @pontinho, status: :created, location: @pontinho }
      else
        format.html { render action: "new" }
        format.json { render json: @pontinho.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pontinhos/1
  # PUT /pontinhos/1.json
  def update
    @pontinho = Pontinho.find(params[:id])

    respond_to do |format|
      if @pontinho.update_attributes(params[:pontinho])
        format.html { redirect_to @pontinho, notice: 'Pontinho was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pontinho.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pontinhos/1
  # DELETE /pontinhos/1.json
  def destroy
   
    @pontinho.destroy

    respond_to do |format|
      format.html { redirect_to pontinhos_url }
      format.json { head :no_content }
    end
  end
end
