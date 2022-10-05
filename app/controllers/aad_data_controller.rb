class AadDataController < ApplicationController
  before_action :set_aad_datum, only: %i[ show edit update destroy ]

  # GET /aad_data or /aad_data.json
  def index
    @aad_data = AadDatum.all
  end

  # GET /aad_data/1 or /aad_data/1.json
  def show
  end

  # GET /aad_data/new
  def new
    @aad_datum = AadDatum.new
  end

  # GET /aad_data/1/edit
  def edit
  end

  # POST /aad_data or /aad_data.json
  def create
    @aad_datum = AadDatum.new(aad_datum_params)

    respond_to do |format|
      if @aad_datum.save
        format.html { redirect_to aad_datum_url(@aad_datum), notice: "Aad datum was successfully created." }
        format.json { render :show, status: :created, location: @aad_datum }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @aad_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aad_data/1 or /aad_data/1.json
  def update
    respond_to do |format|
      if @aad_datum.update(aad_datum_params)
        format.html { redirect_to aad_datum_url(@aad_datum), notice: "Aad datum was successfully updated." }
        format.json { render :show, status: :ok, location: @aad_datum }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @aad_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aad_data/1 or /aad_data/1.json
  def destroy
    @aad_datum.destroy

    respond_to do |format|
      format.html { redirect_to aad_data_url, notice: "Aad datum was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aad_datum
      @aad_datum = AadDatum.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def aad_datum_params
      params.require(:aad_datum).permit(:test1, :test2, :test3, :teast4)
    end
end
