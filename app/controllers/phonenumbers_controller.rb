class PhonenumbersController < ApplicationController
  # GET /phonenumbers
  # GET /phonenumbers.json
  def index
    @phonenumbers = Phonenumber.all

    render json: @phonenumbers
  end

  # GET /phonenumbers/1
  # GET /phonenumbers/1.json
  def show
    @phonenumber = Phonenumber.find(params[:id])

    render json: @phonenumber
  end

  # POST /phonenumbers
  # POST /phonenumbers.json
  def create
    @phonenumber = Phonenumber.new(params[:phonenumber])

    if @phonenumber.save
      render json: @phonenumber, status: :created, location: @phonenumber
    else
      render json: @phonenumber.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /phonenumbers/1
  # PATCH/PUT /phonenumbers/1.json
  def update
    @phonenumber = Phonenumber.find(params[:id])

    if @phonenumber.update(params[:phonenumber])
      head :no_content
    else
      render json: @phonenumber.errors, status: :unprocessable_entity
    end
  end

  # DELETE /phonenumbers/1
  # DELETE /phonenumbers/1.json
  def destroy
    @phonenumber = Phonenumber.find(params[:id])
    @phonenumber.destroy

    head :no_content
  end
end
