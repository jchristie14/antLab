class ExplorationsController < ApplicationController
  #before_action :set_exploration, only: [:show, :edit, :update, :destroy]


  def index
    @explorations = Exploration.all
  end


  def show
    
    lat = Exploration.last.latitude
    long = Exploration.last.longitude
    @place = Exploration.last.location
    @coords = "#{lat},#{long}"
    rawants = Ant.new(@coords, 200).samples
    @ants = rawants["specimens"][0]["genus"]
    @antIm = (rawants.to_s).scan(/http\S+jpg/)

  end


  def new
    @exploration = Exploration.new
  end

  
  def edit
  end

  def create
    @exploration = Exploration.new(exploration_params)

    respond_to do |format|
      if @exploration.save
        format.html { redirect_to @exploration, notice: 'Exploration was successfully created.' }
        format.json { render :show, status: :created, location: @exploration }
      else
        format.html { render :new }
        format.json { render json: @exploration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /explorations/1
  # PATCH/PUT /explorations/1.json
  def update
    respond_to do |format|
      if @exploration.update(exploration_params)
        format.html { redirect_to @exploration, notice: 'Exploration was successfully updated.' }
        format.json { render :show, status: :ok, location: @exploration }
      else
        format.html { render :edit }
        format.json { render json: @exploration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /explorations/1
  # DELETE /explorations/1.json
  def destroy
    @exploration.destroy
    respond_to do |format|
      format.html { redirect_to explorations_url, notice: 'Exploration was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exploration
      @exploration = Exploration.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def exploration_params
      params.require(:exploration).permit(:location, :latitude, :longitude)
    end
end
