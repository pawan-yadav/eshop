class DashboardController < ApplicationController
  before_action :authenticate_user!
  def index
  end

  def home
  end
  
  def about
  end
  
  def contact
  end
end
