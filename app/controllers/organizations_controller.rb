class OrganizationsController < ApplicationController
    def new
        @organization = Organization.new
    end

    def create
        #binding.pry
        @organization = Organization.new(organization_params)
        if @organization.save
            redirect_to @organization
        else 
            render :new
        end
    end

    def index 
        @organization = Organization.all
    end

    private

    def organization_params
        params.require(:organization).permit(:name, :website, :phone, :email, :program_ids => [])
    end
end
