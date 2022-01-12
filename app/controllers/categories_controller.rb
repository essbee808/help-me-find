class CategoriesController < ApplicationController
    def new
    end

    def index
        @categories = ["Budgeting", "Housing", "Transportation"]
    end
end
