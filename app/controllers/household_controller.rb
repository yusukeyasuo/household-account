class HouseholdController < ApplicationController
  before_action :require_login
  def index
    @households = Household.where(user_id: current_user.id)
  end
end
