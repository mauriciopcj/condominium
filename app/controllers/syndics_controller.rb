class SyndicsController < ApplicationController
  before_action :set_syndic, only: %i[ show edit update destroy ]

  # GET /syndics or /syndics.json
  def index
    @syndics = Syndic.all
  end

  # GET /syndics/1 or /syndics/1.json
  def show
  end

  # GET /syndics/new
  def new
    @syndic = Syndic.new
  end

  # GET /syndics/1/edit
  def edit
  end

  # POST /syndics or /syndics.json
  def create
    @syndic = Syndic.new(syndic_params)

    respond_to do |format|
      if @syndic.save
        format.html { redirect_to @syndic, notice: "Syndic was successfully created." }
        format.json { render :show, status: :created, location: @syndic }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @syndic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /syndics/1 or /syndics/1.json
  def update
    respond_to do |format|
      if @syndic.update(syndic_params)
        format.html { redirect_to @syndic, notice: "Syndic was successfully updated." }
        format.json { render :show, status: :ok, location: @syndic }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @syndic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /syndics/1 or /syndics/1.json
  def destroy
    @syndic.destroy
    respond_to do |format|
      format.html { redirect_to syndics_url, notice: "Syndic was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_syndic
      @syndic = Syndic.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def syndic_params
      params.require(:syndic).permit(:start, :end, :user_id)
    end
end
