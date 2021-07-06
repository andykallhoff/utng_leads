class LeadsController < ApplicationController
  before_action :set_lead, except: %i[interested thank_you index new create]

  def interested
    @lead = Lead.new
  end

  def thank_you
  end

  def index
    @leads = Lead.all
  end

  def show
  end

  def new
    @lead = Lead.new
  end

  def create
    @lead = Lead.new(lead_params)
    if @lead.save
      redirect_to thank_you_path, success: 'Congrats! SFC Pinon will be in touch soon.'
    else
      render :interested, error: @lead.errors.full_messages.to_sentence
    end
  end

  def edit
  end

  def update
    if @lead.update(lead_params)
      redirect_to @lead, success: 'Successfully updated.'
    else
      render :edit, error: @lead.errors.full_messages.to_sentence
    end
  end

  def destroy
    @lead.destroy
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
