class Program < ApplicationRecord
    belongs_to :category
    belongs_to :organization
    belongs_to :user

    validates :name, :coverage_area, :description, :website, presence: true
    validates :name, uniqueness: true
end
