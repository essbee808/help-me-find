class ProgramsController < ApplicationController
    before_action

    def new
        @program = Program.new
    end

    def create
        #binding.pry
        @program = Program.new(program_params)
        if @program.save
            redirect_to @program
        else 
            render :new
        end
        @program = Program.new(program_params)
    end

    def index
        @programs = Program.all
    end

    private

    def program_params
        params.require(:program).permit(
            :name, :coverage_area, :languages, :cost, :description, :eligibility
            )
    end
end
