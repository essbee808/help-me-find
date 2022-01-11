class Program < ApplicationRecord
    belongs_to :category
    belongs_to :organizer
    belongs_to :user
end
