class HomeController < ApplicationController
    before_action :require_login

    def index
    end
    
    def show
      @id = params[:id]
    end
end