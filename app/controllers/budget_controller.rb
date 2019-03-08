class BudgetController < ApplicationController
  before_action :require_login
  def index
    @budgets = Budget.where(user_id: current_user.id)
  end
end
