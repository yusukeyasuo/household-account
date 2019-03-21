class HouseholdController < ApplicationController
  before_action :require_login
  before_action :set_household, only: [:edit, :update, :destroy]
  before_action :set_categories
  
  def index
    @households = Household.where(user_id: current_user.id)
  end
  
  def new
    @household = Household.new
  end
  
  def create
    household = Household.new(household_params)
    household.user_id = current_user.id
    household.save
    redirect_to action: :index and return
  end
  
  def edit
  end
  
  def update
    @household.update(household_params)
    redirect_to action: :index and return
  end
  
  def destroy
    @household.destroy
    redirect_to action: :index and return
  end
  
  private
    def set_household
      @household = Household.find_by(id: params[:id])
      redirect_to :household_index_path and return unless @household
    end
    
    def set_categories
      categories = Category.all.select(:id, :name)
      @categories = Hash[categories.map{|category| [category.id, category.name]}]
    end
    
    def household_params
      params.require(:household).permit(:user_id, :entry_date, :category, :sub_category1, :sub_category2, :payment, :result, :sum_credit, :check_out, :detail, :analysis, :client, :content)
    end
end
