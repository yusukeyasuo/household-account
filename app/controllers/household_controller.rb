class HouseholdController < ApplicationController
  def index
    @households = Household.where(user_id: current_user.id)
  end
end
