class Api::V1::DonationsController < ApplicationController
  def index
    donations = Donation.all.sort_by{|d| d[:date]}
    # render json: donations, include: :fund
    render json: DonationSerializer.new(donations)
  end

  def create
    donation = Donation.new(donation_params)
    if donation.save
      render json: DonationSerializer.new(donation), status: :accepted
    else
      render json: {errors: donation.errors.full_messages}, status: :unprocessible_entity
    end
  end

  def update
    donation = Donation.find_by_id(params[:id])
    if donation.update(donation_params)
      render json: DonationSerializer.new(donation), status: accepted
    else
      render json: {errors: donation.errors.full_messages}, status: :unprocessible_entity
    end

  end

  private

  def donation_params
    params.require(:donation).permit(:date, :recipient, :contact, :amount, :fund_id, :notes)
  end

end
