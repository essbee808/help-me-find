class CategoriesController < ApplicationController

    def index
        @categories = ["Budgeting", "Housing", "Transportation"]
    end
end
