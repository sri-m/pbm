class AvailableStocksController < ApplicationController
  before_action :set_available_stock, only: [:show, :edit, :update, :destroy]
  layout "details"
  before_action :authenticate_member!
  # GET /available_stocks
  # GET /available_stocks.json
  def index
    @available_stocks = AvailableStock.all
  end

  # GET /available_stocks/1
  # GET /available_stocks/1.json
  def show
  end

  # GET /available_stocks/new
  def new
    @available_stock = AvailableStock.new
  end

  # GET /available_stocks/1/edit
  def edit
  end

  # POST /available_stocks
  # POST /available_stocks.json
  def create
    @available_stock = AvailableStock.new(available_stock_params)

    respond_to do |format|
      if @available_stock.save
        format.html { redirect_to @available_stock, notice: 'Available stock was successfully created.' }
        format.json { render :show, status: :created, location: @available_stock }
      else
        format.html { render :new }
        format.json { render json: @available_stock.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /available_stocks/1
  # PATCH/PUT /available_stocks/1.json
  def update
    respond_to do |format|
      if @available_stock.update(available_stock_params)
        format.html { redirect_to @available_stock, notice: 'Available stock was successfully updated.' }
        format.json { render :show, status: :ok, location: @available_stock }
      else
        format.html { render :edit }
        format.json { render json: @available_stock.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /available_stocks/1
  # DELETE /available_stocks/1.json
  def destroy
    @available_stock.destroy
    respond_to do |format|
      format.html { redirect_to available_stocks_url, notice: 'Available stock was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_available_stock
      @available_stock = AvailableStock.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def available_stock_params
      params.require(:available_stock).permit(:blood_type, :units, :price)
    end
end
