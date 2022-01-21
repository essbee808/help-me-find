class Organization < ApplicationRecord
    has_many :programs, dependent: :destroy
    has_many :categories, through: :programs
    
    accepts_nested_attributes_for :programs

    validates :name, :website, :phone, :email, presence: true
    validates :name, uniqueness: true

end
