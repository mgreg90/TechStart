class ChangePerksForCompany < ActiveRecord::Migration
  def change
    change_column :companies, :perks, :text
    add_column :companies, :year_founded, :string
  end
end
