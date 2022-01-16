class Organization < ApplicationRecord
    has_many :programs
    has_many :categories, through: :programs

    validates :name, :website, :phone, :email, presence: true
    validates :name, uniqueness: true

end
