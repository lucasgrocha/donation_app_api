class MoneyController < ApplicationController
  before_action :set_money, only: [:show, :update, :destroy]

  # GET /money
  def index
    @money = Money.all

    render json: @money
  end

  # GET /money/1
  def show
    render json: @money
  end

  # POST /money
  def create
    @money = Money.new(money_params)

    if @money.save
      render json: @money, status: :created, location: @money
    else
      render json: @money.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /money/1
  def update
    if @money.update(money_params)
      render json: @money
    else
      render json: @money.errors, status: :unprocessable_entity
    end
  end

  # DELETE /money/1
  def destroy
    @money.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_money
      @money = Money.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def money_params
      params.require(:money).permit(:value, :payment_method)
    end
end
