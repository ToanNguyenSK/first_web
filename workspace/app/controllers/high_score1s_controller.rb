class HighScore1sController < ApplicationController
  before_action :set_high_score1, only: [:show, :edit, :update, :destroy]

  # GET /high_score1s
  # GET /high_score1s.json
  def index
    @high_score1s = HighScore1.all
  end

  # GET /high_score1s/1
  # GET /high_score1s/1.json
  def show
  end

  # GET /high_score1s/new
  def new
    @high_score1 = HighScore1.new
  end

  # GET /high_score1s/1/edit
  def edit
  end

  # POST /high_score1s
  # POST /high_score1s.json
  def create
    @high_score1 = HighScore1.new(high_score1_params)

    respond_to do |format|
      if @high_score1.save
        format.html { redirect_to @high_score1, notice: 'High score1 was successfully created.' }
        format.json { render :show, status: :created, location: @high_score1 }
      else
        format.html { render :new }
        format.json { render json: @high_score1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /high_score1s/1
  # PATCH/PUT /high_score1s/1.json
  def update
    respond_to do |format|
      if @high_score1.update(high_score1_params)
        format.html { redirect_to @high_score1, notice: 'High score1 was successfully updated.' }
        format.json { render :show, status: :ok, location: @high_score1 }
      else
        format.html { render :edit }
        format.json { render json: @high_score1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /high_score1s/1
  # DELETE /high_score1s/1.json
  def destroy
    @high_score1.destroy
    respond_to do |format|
      format.html { redirect_to high_score1s_url, notice: 'High score1 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_high_score1
      @high_score1 = HighScore1.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def high_score1_params
      params.require(:high_score1).permit(:game, :score, :name)
    end
end
