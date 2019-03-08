class ProfitController < ApplicationController
  before_action :require_login
  def index
    @profits = Profit.where(user_id: current_user.id)
  end
end
