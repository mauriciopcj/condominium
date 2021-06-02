class TaxesController < ApplicationController
  before_action :set_tax, only: %i[ show edit update destroy ]

  # GET /taxes or /taxes.json
  def index
    @taxes = Tax.all
  end

  # GET /taxes/1 or /taxes/1.json
  def show
  end

  # GET /taxes/new
  def new
    @tax = Tax.new
    @apartments = Apartment.all
  end

  # GET /taxes/1/edit
  def edit
    @apartments = Apartment.all
  end

  # POST /taxes or /taxes.json
  def create
    @tax = Tax.new(tax_params)

    respond_to do |format|
      if @tax.save
        format.html { redirect_to @tax, notice: "Tax was successfully created." }
        format.json { render :show, status: :created, location: @tax }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tax.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /taxes/1 or /taxes/1.json
  def update
    respond_to do |format|
      if @tax.update(tax_params)
        format.html { redirect_to @tax, notice: "Tax was successfully updated." }
        format.json { render :show, status: :ok, location: @tax }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tax.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /taxes/1 or /taxes/1.json
  def destroy
    @tax.destroy
    respond_to do |format|
      format.html { redirect_to taxes_url, notice: "Tax was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tax
      @tax = Tax.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tax_params
      params.require(:tax).permit(:reference_date, :due_date, :payment_date, :apartment_id,
        expense_attributes: [:id, :service_type, :value, :_destroy])
    end
end
