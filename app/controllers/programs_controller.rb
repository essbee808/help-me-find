class ProgramsController < ApplicationController
    def new
    end

    private

    def program_params
        params.require(:organization).permit(
            :name, :cover_area, :languages, :cost, :description, :eligibility
            )
    end
    t.string "name"
    t.text "coverage_area"
    t.text "languages"
    t.string "cost"
    t.text "description"
    t.text "eligibility"
end
