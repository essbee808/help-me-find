class ProgramsController < ApplicationController
    def new
        @program = Program.new
    end

    def create
    end

    def index
        @programs = Program.all
    end

    private

    def program_params
        params.require(:organization).permit(
            :name, :cover_area, :languages, :cost, :description, :eligibility
            )
    end
end
