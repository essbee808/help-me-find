class OrganizationsController < ApplicationController
    def new
        @organization = Organization.new
    end

    def create
        binding.pry
    end

    def index 
        @organization = Organization.all
    end

    private

    def organization_params
        params.require(:organization).permit(:name, :website, :phone, :email)
    end
end
