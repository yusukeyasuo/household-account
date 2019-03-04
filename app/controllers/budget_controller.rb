class BudgetController < ApplicationController
  def index
    @budgets = Household.where(user_id: current_user.id)
  end
end
