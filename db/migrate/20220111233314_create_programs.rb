class CreatePrograms < ActiveRecord::Migration[6.1]
  def change
    create_table :programs do |t|
      t.string :name
      t.text :coverage_area
      t.text :languages
      t.string :cost
      t.text :description
      t.text :eligibility

      t.timestamps
    end
  end
end
