class DonationsController < ApplicationController

  def new
    @nonprofit = Nonprofit.find(params[:nonprofit_id])
    @donation = Donation.new
  end

  def create
    @nonprofit = Nonprofit.find(params[:nonprofit_id])
    @donation = Donation.new(donation_params)
    d
    if @donation.save && !params[:good]
      flash[:notice] = "You have donated $#{@donation.amount_format} to #{@nonprofit.name}."
      redirect_to nonprofit_path(@nonprofit)
    else
      flash[:alert] = @donation.errors.full_messages[0]
      render 'new'
    end
  end
private

  def donation_params
    params.require(:donation).permit(:amount, :nonprofit_id, :from)
  end

end
