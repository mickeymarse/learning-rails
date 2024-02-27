class DemonsController < ApplicationController
  before_action :set_demon, only: %i[ show edit update destroy ]

  # GET /demons or /demons.json
  def index
    @demons = Demon.all
  end

  # GET /demons/1 or /demons/1.json
  def show
  end

  # GET /demons/new
  def new
    @demon = Demon.new
  end

  # GET /demons/1/edit
  def edit
  end

  # POST /demons or /demons.json
  def create
    @demon = Demon.new(demon_params)

    respond_to do |format|
      if @demon.save
        format.html { redirect_to demon_url(@demon), notice: "Demon was successfully created." }
        format.json { render :show, status: :created, location: @demon }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @demon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /demons/1 or /demons/1.json
  def update
    respond_to do |format|
      if @demon.update(demon_params)
        format.html { redirect_to demon_url(@demon), notice: "Demon was successfully updated." }
        format.json { render :show, status: :ok, location: @demon }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @demon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /demons/1 or /demons/1.json
  def destroy
    @demon.destroy!

    respond_to do |format|
      format.html { redirect_to demons_url, notice: "Demon was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_demon
      @demon = Demon.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def demon_params
      params.require(:demon).permit(:first_name, :last_name, :email, :phone, :social_media)
    end
end
