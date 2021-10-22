class HomeController < ApplicationController
    skip_forgery_protection
    before_action :authenticate_user!

    def index
    end
end
