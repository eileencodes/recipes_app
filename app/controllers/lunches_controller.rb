class LunchesController < ApplicationController
  before_action :set_lunch, only: [:show, :edit, :update, :destroy]

  # GET /lunches
  # GET /lunches.json
  def index
    @lunches = Lunch.all
  end

  # GET /lunches/1
  # GET /lunches/1.json
  def show
  end

  # GET /lunches/new
  def new
    @lunch = Lunch.new
  end

  # GET /lunches/1/edit
  def edit
  end

  # POST /lunches
  # POST /lunches.json
  def create
    @lunch = Lunch.new(lunch_params)

    respond_to do |format|
      if @lunch.save
        format.html { redirect_to @lunch, notice: 'Lunch was successfully created.' }
        format.json { render :show, status: :created, location: @lunch }
      else
        format.html { render :new }
        format.json { render json: @lunch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lunches/1
  # PATCH/PUT /lunches/1.json
  def update
    respond_to do |format|
      if @lunch.update(lunch_params)
        format.html { redirect_to @lunch, notice: 'Lunch was successfully updated.' }
        format.json { render :show, status: :ok, location: @lunch }
      else
        format.html { render :edit }
        format.json { render json: @lunch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lunches/1
  # DELETE /lunches/1.json
  def destroy
    @lunch.destroy
    respond_to do |format|
      format.html { redirect_to lunches_url, notice: 'Lunch was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lunch
      @lunch = Lunch.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lunch_params
      params.require(:lunch).permit(:name, :lunch_type)
    end
end
