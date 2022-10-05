class AadsController < ApplicationController
  before_action :set_aad, only: %i[ show edit update destroy ]

  # GET /aads or /aads.json
  def index
    @aads = Aad.all
  end

  # GET /aads/1 or /aads/1.json
  def show
  end

  # GET /aads/new
  def new
    @aad = Aad.new
  end

  # GET /aads/1/edit
  def edit
  end

  # POST /aads or /aads.json
  def create
    @aad = Aad.new(aad_params)

    respond_to do |format|
      if @aad.save
        format.html { redirect_to aad_url(@aad), notice: "Aad was successfully created." }
        format.json { render :show, status: :created, location: @aad }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @aad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aads/1 or /aads/1.json
  def update
    respond_to do |format|
      if @aad.update(aad_params)
        format.html { redirect_to aad_url(@aad), notice: "Aad was successfully updated." }
        format.json { render :show, status: :ok, location: @aad }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @aad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aads/1 or /aads/1.json
  def destroy
    @aad.destroy

    respond_to do |format|
      format.html { redirect_to aads_url, notice: "Aad was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aad
      @aad = Aad.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def aad_params
      params.require(:aad).permit(:test1, :test2, :test3)
    end
end
