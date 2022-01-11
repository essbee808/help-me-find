class AddCategoryAndOrganizerToProgram < ActiveRecord::Migration[6.1]
  def change
    add_column :programs, :category_id, :integer
    add_column :programs, :organizer_id, :integer
  end
end
