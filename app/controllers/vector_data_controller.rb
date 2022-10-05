class VectorDataController < ApplicationController
  before_action :set_vector_datum, only: %i[ show edit update destroy ]

  # GET /vector_data or /vector_data.json
  def index
    @vector_data = VectorDatum.all
  end

  # GET /vector_data/1 or /vector_data/1.json
  def show
  end

  # GET /vector_data/new
  def new
    @vector_datum = VectorDatum.new
  end

  # GET /vector_data/1/edit
  def edit
  end

  # POST /vector_data or /vector_data.json
  def create
    @vector_datum = VectorDatum.new(vector_datum_params)

    respond_to do |format|
      if @vector_datum.save
        format.html { redirect_to vector_datum_url(@vector_datum), notice: "Vector datum was successfully created." }
        format.json { render :show, status: :created, location: @vector_datum }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @vector_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vector_data/1 or /vector_data/1.json
  def update
    respond_to do |format|
      if @vector_datum.update(vector_datum_params)
        format.html { redirect_to vector_datum_url(@vector_datum), notice: "Vector datum was successfully updated." }
        format.json { render :show, status: :ok, location: @vector_datum }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @vector_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vector_data/1 or /vector_data/1.json
  def destroy
    @vector_datum.destroy

    respond_to do |format|
      format.html { redirect_to vector_data_url, notice: "Vector datum was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vector_datum
      @vector_datum = VectorDatum.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def vector_datum_params
      params.require(:vector_datum).permit(:research_id, :data_id, :data_type)
    end
end
