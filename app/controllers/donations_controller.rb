class DonationsController < ApplicationController

  def new
    @nonprofit = Nonprofit.find(params[:nonprofit_id])
    @donation = Donation.new
  end

  def create
    @nonprofit = Nonprofit.find(params[:nonprofit_id])
    @donation = Donation.new(donation_params)
    if @donation.save
      flash[:notice] = "You have donated $#{@donation.amount} to #{@nonprofit.name}."
      redirect_to nonprofit_path(@nonprofit)
    else
      render 'new'
    end
  end
private

  def donation_params
    params.require(:donation).permit(:amount, :nonprofit_id, :from)
  end


end
