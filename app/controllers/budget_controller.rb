class BudgetController < ApplicationController
  def index
    @budgets = Budget.where(user_id: current_user.id)
  end
end
