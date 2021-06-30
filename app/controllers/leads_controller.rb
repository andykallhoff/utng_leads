class LeadsController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
    def set_lead
      @lead = Lead.find(params[:id])
    end

    def lead_params
      params.require(:lead).permit(
        :first_name,
        :last_name,
        :email,
        :phone_number,
        :street,
        :city,
        :state,
        :zip,
        :active_contact,
        :is_army,
        :comment,
        :note
      )
    end
end
