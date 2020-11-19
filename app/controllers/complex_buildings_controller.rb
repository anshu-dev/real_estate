class ComplexBuildingsController < ApplicationController
  before_action :set_complex_building, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_manager!, only: [:new, :create, :destroy]

  # GET /complex_buildings
  # GET /complex_buildings.json
  def index
    @complex_buildings = ComplexBuilding.all
  end

  # GET /complex_buildings/1
  # GET /complex_buildings/1.json
  def show
  end

  # GET /complex_buildings/new
  def new
    @complex_building = ComplexBuilding.new
  end

  # GET /complex_buildings/1/edit
  def edit
  end

  # POST /complex_buildings
  # POST /complex_buildings.json
  def create
    @complex_building = ComplexBuilding.new(complex_building_params)
    @complex_building.manager_id = current_manager.id

    respond_to do |format|
      if @complex_building.save
        format.html { redirect_to @complex_building, notice: 'Complex building was successfully created.' }
        format.json { render :show, status: :created, location: @complex_building }
      else
        format.html { render :new }
        format.json { render json: @complex_building.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /complex_buildings/1
  # PATCH/PUT /complex_buildings/1.json
  def update
    respond_to do |format|
      if @complex_building.update(complex_building_params)
        format.html { redirect_to @complex_building, notice: 'Complex building was successfully updated.' }
        format.json { render :show, status: :ok, location: @complex_building }
      else
        format.html { render :edit }
        format.json { render json: @complex_building.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /complex_buildings/1
  # DELETE /complex_buildings/1.json
  def destroy
    @complex_building.destroy
    respond_to do |format|
      format.html { redirect_to complex_buildings_url, notice: 'Complex building was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_complex_building
      @complex_building = ComplexBuilding.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def complex_building_params
      params.require(:complex_building).permit(:owner, :address, :units, :sqmt, :price, :photo, :photo_cache)
    end
end
