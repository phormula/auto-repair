class ClientsController < ApplicationController
    skip_forgery_protection
    before_action :authenticate_user!
    def index
        @client = Client.new
    end

    def create
    @client = Client.new(client_params)
        if @client.save
            respond_to do |format|  
                format.js {
                    render :js => '$("body").append("works");'
                }
            end 
        end
    end

    private

    def client_params
    params.require(:client).permit(:first_name, :last_name, :email, :user_id)
    end
end
