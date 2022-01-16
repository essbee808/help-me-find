class Program < ApplicationRecord
    belongs_to :category
    belongs_to :organizer
    belongs_to :user

    validates :name, :coverage_area, :languages, :cost, :description, :eligibility, presence: true
    validates :name, uniqueness: true
end
