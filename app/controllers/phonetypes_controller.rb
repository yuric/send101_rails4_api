class PhonetypesController < ApplicationController
  # GET /phonetypes
  # GET /phonetypes.json
  def index
    @phonetypes = Phonetype.all
  end

  # GET /phonetypes/1
  # GET /phonetypes/1.json
  def show
    @phonetype = Phonetype.find(params[:id])
  end

  # POST /phonetypes
  # POST /phonetypes.json
  def create
    @phonetype = Phonetype.new(params[:phonetype])

    if @phonetype.save
      render json: @phonetype, status: :created, location: @phonetype
    else
      render json: @phonetype.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /phonetypes/1
  # PATCH/PUT /phonetypes/1.json
  def update
    @phonetype = Phonetype.find(params[:id])

    if @phonetype.update(params[:phonetype])
      head :no_content
    else
      render json: @phonetype.errors, status: :unprocessable_entity
    end
  end

  # DELETE /phonetypes/1
  # DELETE /phonetypes/1.json
  def destroy
    @phonetype = Phonetype.find(params[:id])
    @phonetype.destroy

    head :no_content
  end
end
