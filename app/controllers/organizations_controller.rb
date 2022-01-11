class OrganizationsController < ApplicationController
    def new
    end

    def create
    end

    def index 
    end

    private

    def organization_params
        params.require(:organization).permit(:name, :website, :phone, :email)
    end
end
