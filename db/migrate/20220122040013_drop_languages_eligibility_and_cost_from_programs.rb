class DropLanguagesEligibilityAndCostFromPrograms < ActiveRecord::Migration[6.1]
  def change
    remove_column :programs, :eligibility
    remove_column :programs, :languages
    remove_column :programs, :cost
  end
end
