class AddWebsiteToPrograms < ActiveRecord::Migration[6.1]
  def change
    add_column :programs, :website, :string
  end
end
