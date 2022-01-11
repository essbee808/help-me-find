class ProgramsController < ApplicationController
    def new
    end

    private

    def program_params
        params.require(:organization).permit(
            :name, :cover_area, :languages, :cost, :description, :eligibility
            )
    end
end
