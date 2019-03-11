class AssetController < ApplicationController
  before_action :require_login
  def index
    @assets = Asset.where(user_id: current_user.id)
  end
end
