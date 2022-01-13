class Program < ApplicationRecord
    belongs_to :category
    belongs_to :organizer
    belongs_to :user

    validates :name, :coverage_area, :langugages, :cost, :description, :eligibility, presence: true
end
