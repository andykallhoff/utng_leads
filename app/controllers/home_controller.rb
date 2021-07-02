class HomeController < ApplicationController

  def index; end

  def interested
    @lead = Lead.new
  end

end
