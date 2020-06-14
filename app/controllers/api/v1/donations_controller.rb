class Api::V1::DonationsController < ApplicationController
  before_action :set_donation, only: [:show, :update, :destroy]

  # GET /donations
  def index
    @donations = Donation.all

    render json: @donations
  end

  # GET /donations/1
  def show
    render json: @donation
  end

  # POST /donations
  def create
    user           = User.find_by(email: params['user_email'])
    donation_value = params['donation_value'].to_f
    money_donation = product_donation = nil

    return if donation_value.negative?

    if (params['donation_type'] == 'Money')
      money_donation = Money.create(value: donation_value, payment_method: params['payment_method'])
    elsif (params['donation_type'] == 'Product')
      product_donation = Product.find_by(campaign_name: params['campaign_name'])
      collected = product_donation.collected
      product_donation.update!(collected: collected + donation_value)
    else
      return render json: { error: 'Invalid donation type' }
    end

    @donation = Donation.new(user: user, donatable: money_donation || product_donation)

    if @donation.save
      render json: { donation: @donation, donation_info: money_donation || product_donation }
    else
      render json: @donation.errors, status: :unprocessable_entity
    end
  end

  def get_donations_of_user
    @user = User.find_by(email: params['user_email'])

    render json: @user.donations unless @user.nil?
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_donation
      @donation = Donation.find(params[:id])
    end
end
