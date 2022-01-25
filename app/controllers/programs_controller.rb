class ProgramsController < ApplicationController
    before_action :verified_user
    
    def new
        @program = Program.new
    end

    def create
        
        @program = Program.new(program_params)
        @organization = Organization.find_by(id: params[:program][:organization_id])
        @program.organization_id = @organization.id 
        binding.pry
        if @program.save
            redirect_to program_path(@program)
        else 
            render :new
        end
    end

    def index
        @programs = Program.all
    end

    private

    def program_params
        params.require(:program).permit(
            :name, :coverage_area, :description, :website, :organization_id, :category_id
            )
    end
end
