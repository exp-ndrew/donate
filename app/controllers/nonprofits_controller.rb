class NonprofitsController < ApplicationController

  def index
    @nonprofits = Nonprofit.all
  end

  def new
    @nonprofit = Nonprofit.new
  end

  def create
    @nonprofit = Nonprofit.new(nonprofit_params)
    if @nonprofit.save
      flash[:notice] = "Nonprofit added."
      redirect_to root_path
    else
      render 'new'
    end
  end


private

  def nonprofit_params
    params.require(:nonprofit).permit(:name)
  end

end
